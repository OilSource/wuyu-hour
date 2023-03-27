package com.oaker.system.domain.dto;

import cn.afterturn.easypoi.excel.annotation.Excel;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class HolidayModelDTO {

    @Excel(name = "日期", width = 20)
    private String date;

    @Excel(name = "是否法定节日", width = 20)
    private String holiday;

}
