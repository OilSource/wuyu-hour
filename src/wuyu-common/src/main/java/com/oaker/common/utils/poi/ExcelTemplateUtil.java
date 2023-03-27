package com.oaker.common.utils.poi;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.http.HttpServletResponse;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;

/**
 * @description: 下载模板工具类
 **/

public class ExcelTemplateUtil {

    private static final Logger log = LoggerFactory.getLogger(ExcelTemplateUtil.class);

    private String name;

    public static void setBaseInfo(HttpServletResponse response, String fileName) throws UnsupportedEncodingException {
        fileName = URLEncoder.encode(fileName + ".xlsx", "UTF-8");
        fileName = new String(fileName.getBytes(StandardCharsets.UTF_8), StandardCharsets.ISO_8859_1);

        response.setCharacterEncoding("UTF-8");
        response.setHeader("content-Type", "application/vnd.ms-excel");
        response.setHeader("Content-Disposition", "attachment;filename=" + fileName);
    }


}
