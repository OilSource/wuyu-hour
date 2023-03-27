package com.oaker.system.domain.vo;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.time.LocalDate;
import java.util.Date;

@Data
@ApiModel(value = "节假日列表VO")
public class SysHolidayListVO {

    @ApiModelProperty("主键Id")
    private Long id;

    @ApiModelProperty("年份")
    private Integer year;

    @ApiModelProperty("月份")
    private Integer month;

    @ApiModelProperty("日")
    private Integer day;

    @ApiModelProperty("日期")
    private LocalDate date;

    @ApiModelProperty("是否法定节日期标识,true:是,false:否")
    private Boolean holiday;

    @ApiModelProperty("创建时间")
    private Date createTime;


}
