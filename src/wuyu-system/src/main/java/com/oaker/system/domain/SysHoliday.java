package com.oaker.system.domain;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.baomidou.mybatisplus.enums.IdType;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.experimental.Accessors;

import java.time.LocalDate;
import java.util.Date;

/**
 * 节假日信息表
 */
@Data
@Accessors(chain = true)
@TableName("sys_holiday")
public class SysHoliday {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty("主键Id")
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    @ApiModelProperty("年份")
    @TableField(value = "year")
    private Integer year;


    @ApiModelProperty("月份")
    @TableField(value = "month")
    private Integer month;


    @ApiModelProperty("日")
    @TableField(value = "day")
    private Integer day;


    @ApiModelProperty("日期")
    @TableField(value = "date")
    private LocalDate date;

    @ApiModelProperty("是否法定节日期标识,true:是,false:否")
    @TableField(value = "holiday")
    private Boolean holiday;

    @ApiModelProperty("创建时间")
    @TableField(value = "create_time")
    private Date createTime;


}
