package com.oaker.web.controller.system;

import cn.afterturn.easypoi.excel.entity.enmus.ExcelType;
import com.oaker.common.annotation.Log;
import com.oaker.common.core.controller.BaseController;
import com.oaker.common.core.domain.AjaxResult;
import com.oaker.common.core.page.PageDomain;
import com.oaker.common.core.page.TableDataInfo;
import com.oaker.common.enums.BusinessType;
import com.oaker.common.utils.poi.ExcelTemplateUtil;
import com.oaker.common.utils.poi.ExcelUtils;
import com.oaker.system.domain.dto.HolidayModelDTO;
import com.oaker.system.service.SysHolidayService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.validation.constraints.NotNull;
import java.io.IOException;
import java.time.LocalDate;
import java.util.LinkedList;
import java.util.List;

@Validated
@Api(tags = "A-System-节假日信息管理")
@RestController
@RequestMapping("/system/holiday")
public class SysHolidayController extends BaseController {

    @Resource
    private SysHolidayService sysHolidayService;

//    @Log(title = "下载节假日模板", businessType = BusinessType.EXPORT)
//    @PreAuthorize("@ss.hasPermi('system:holiday:page')")
//    @GetMapping("/download")
//    public void download(HttpServletResponse response) throws IOException {
//        List<HolidayModelDTO> list = new ArrayList<>();
//        int year = LocalDate.now().getYear() + 1;
//        HolidayModelDTO data = new HolidayModelDTO(year + "-01-01", "是");
//        ExcelUtil<HolidayModelDTO> util = new ExcelUtil<HolidayModelDTO>(HolidayModelDTO.class);
//        util.exportExcel(response, list, "节假日信息");
//    }

    @ApiOperation("下载节假日模板")
    @PreAuthorize("@ss.hasPermi('system:holiday:page')")
    @GetMapping(value = "/download")
    public void download2(HttpServletResponse response) throws IOException {
        ExcelTemplateUtil.setBaseInfo(response, "节假日模板");
        List<HolidayModelDTO> list = new LinkedList<>();
        int year = LocalDate.now().getYear() + 1;
        HolidayModelDTO data = new HolidayModelDTO(year + "-01-01", "是");
        list.add(data);
        ExcelUtils.exportExcel(list, HolidayModelDTO.class, ExcelType.XSSF, response.getOutputStream());
    }

    @ApiOperation("导入节假日信息")
    @Log(title = "导入节假日", businessType = BusinessType.IMPORT)
    @PreAuthorize("@ss.hasPermi('system:holiday:page')")
    @PostMapping("/importData")
    public AjaxResult importData(@RequestPart("file") MultipartFile file, @NotNull @RequestParam("year") Integer year) throws Exception {
        //ExcelUtil<HolidayModelDTO> util = new ExcelUtil<>(HolidayModelDTO.class);
        //List<HolidayModelDTO> list = util.importExcel(file.getInputStream());
        List<HolidayModelDTO> list = ExcelUtils.importExcel(file.getInputStream(), 0, 1, HolidayModelDTO.class);
        sysHolidayService.importHolidays(year, list);
        return toAjax(true);
    }

    @ApiOperation("分页查询")
    @GetMapping(value = "/page")
    @PreAuthorize("@ss.hasPermi('system:holiday:page')")
    public TableDataInfo page(Integer year, Integer month, PageDomain pageDomain) {
        return sysHolidayService.page(year, month, pageDomain.getPageNum(), pageDomain.getPageSize());
    }

    @ApiOperation("修改是否节假日")
    @PutMapping("/join")
    @PreAuthorize("@ss.hasPermi('system:holiday:page')")
    @Log(title = "项目人员管理-修改是否节假日", businessType = BusinessType.UPDATE)
    public AjaxResult updateHoliday(@NotNull(message = "id不能为空") @RequestParam("id") Long id
            , @NotNull(message = "加入时间同项目开始时间标识") @RequestParam("holiday") Boolean holiday) {
        return toAjax(sysHolidayService.updateHoliday(id, holiday));
    }

}
