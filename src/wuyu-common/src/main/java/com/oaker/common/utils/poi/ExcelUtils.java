package com.oaker.common.utils.poi;

import cn.afterturn.easypoi.excel.ExcelExportUtil;
import cn.afterturn.easypoi.excel.ExcelImportUtil;
import cn.afterturn.easypoi.excel.entity.ExportParams;
import cn.afterturn.easypoi.excel.entity.ImportParams;
import cn.afterturn.easypoi.excel.entity.enmus.ExcelType;
import cn.afterturn.easypoi.excel.entity.result.ExcelImportResult;
import com.oaker.common.utils.poi.vo.SetSelect;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.ss.util.CellRangeAddressList;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;
import java.util.NoSuchElementException;

/**
 * TODO 重新优化一版
* Excel导入导出工具
*/
public class ExcelUtils {

    private static Logger LOGGER = LoggerFactory.getLogger(ExcelUtils.class);

    /**
     * 功能描述：导出Excel
     *
     * @param list 导出的实体类
     * @param pojoClass 映射的实体类
     * @param type 导出文件类型   HSSF : xls ; XSSF : xlsx
     * @param os 输出流
     */
    public static  void exportExcel(List<?> list, Class<?> pojoClass, ExcelType type, OutputStream os) {
        ExportParams exportParams = new ExportParams();
        exportParams.setSheetName("Sheet1");
        exportParams.setType(type);
        Workbook workbook = ExcelExportUtil.exportExcel(exportParams, pojoClass, list);
        //设置单元格格式为文本
        setTextStyle(workbook,pojoClass);
        if (workbook != null) {
            downLoadExcel(os,workbook);
        }
    }
    /**
     * 功能描述：导出Excel
     *
     * @param list 导出的实体类
     * @param pojoClass 映射的实体类
     * @param exportParams 文件导出参数配置
     * @param os 输出流
     */
    public static  void exportExcel(List<?> list, Class<?> pojoClass, ExportParams exportParams, OutputStream os) {
        Workbook workbook = ExcelExportUtil.exportExcel(exportParams, pojoClass, list);
        //设置单元格格式为文本
        setTextStyle(workbook,pojoClass);
        if (workbook != null) {
            downLoadExcel(os,workbook);
        }
    }

    /**
     * 功能描述：Excel导出
     *
     *    response.setCharacterEncoding("UTF-8");
     *    response.setHeader("content-Type", "application/vnd.ms-excel");
     *    response.setHeader("Content-Disposition", "attachment;filename=" + URLEncoder.encode(fileName, "UTF-8"));
     *
     * @param os 输出流
     * @param workbook Excel对象
     * @return
     */
    private static void downLoadExcel(OutputStream os, Workbook workbook) {
        try {
            workbook.write(os);
            workbook.close();
        } catch (IOException e) {
            throw new  RuntimeException(e);
        }
    }

    /**
     * 功能描述：根据接收的Excel文件来导入Excel,并封装成实体类，只返回成功的结果集
     *
     * @param is 上传的文件流
     * @param titleRows 表标题的行数
     * @param headerRows 表头行数
     * @param pojoClass Excel实体类
     *
     * @return 导入的结果，成功的数据集合
     */
    public static <T> List<T> importExcel(InputStream is, Integer titleRows, Integer headerRows, Class<T> pojoClass) {
        if (is == null) {
            return null;
        }
        ImportParams params = new ImportParams();
        params.setTitleRows(titleRows);
        params.setHeadRows(headerRows);
        List<T> list = null;
        try {
            list = ExcelImportUtil.importExcel(is, pojoClass, params);
        } catch (NoSuchElementException e) {
            throw new RuntimeException("excel文件不能为空", e);
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage());
        }
        return list;
    }

    /**
     * 功能描述：根据接收的Excel文件来导入Excel,并封装成实体类，返回详细的结果集
     *
     * @param is 上传的文件流
     * @param params 导入配置参数
     * @param pojoClass Excel实体类
     *
     * @return 导入的结果，包含成功的数据集合和错误的数据集合
     */
    public static <T> ExcelImportResult<T> importExcel(InputStream is, ImportParams params, Class<T> pojoClass) {
        if (is == null) {
            throw new RuntimeException("文件流不能为null");
        }
        try {
            return ExcelImportUtil.importExcelMore(is, pojoClass, params);
        } catch (NoSuchElementException e) {
            throw new RuntimeException("excel文件不能为空", e);
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage());
        }
    }

    /**
     * 设置导出的下拉框
     *
     * @param workbook
     * @param selectList
     */
    public static void setSelectList(Workbook workbook, List<SetSelect> selectList) {

        Sheet sheet = workbook.getSheetAt(0);

        DataValidationHelper helper = sheet.getDataValidationHelper();
        for (SetSelect setSelect : selectList) {
            CellRangeAddressList addressList = new CellRangeAddressList(1, 10000, setSelect.getCol(), setSelect.getCol());
            DataValidationConstraint constraint = helper.createExplicitListConstraint(setSelect.getData());
            DataValidation dataValidation = helper.createValidation(constraint, addressList);
            // 对sheet页生效
            sheet.addValidationData(dataValidation);
        }

    }

    /**
     * 带下拉框的导出
     * @param list
     * @param pojoClass
     * @param type
     * @param os
     * @param selectList
     */
    public static void exportExcel(List<?> list, Class<?> pojoClass, ExcelType type, OutputStream os, List<SetSelect> selectList) {
        ExportParams exportParams = new ExportParams();
        exportParams.setSheetName("Sheet1");
        exportParams.setType(type);
        Workbook workbook = ExcelExportUtil.exportExcel(exportParams, pojoClass, list);
        //赋值下拉框
        setSelectList(workbook, selectList);
        //设置单元格格式为文本
        setTextStyle(workbook, pojoClass);

        if (workbook != null) {
            downLoadExcel(os, workbook);
        }
    }

    /**
     * 设置单元格格式为文本
     *
     * @param workbook
     * @param pojoClass
     */
    private static void setTextStyle(Workbook workbook, Class<?> pojoClass) {
        int length = pojoClass.getDeclaredFields().length;
        // 设置单元格格式为文本格式
        CellStyle textStyle = workbook.createCellStyle();
        DataFormat format = workbook.createDataFormat();
        textStyle.setDataFormat(format.getFormat("@"));
        //设置单元格格式为"文本"
        Sheet sheet = workbook.getSheetAt(0);
        for (int i = 0; i < length; i++) {
            sheet.setDefaultColumnStyle(i, textStyle);
        }
    }
}
