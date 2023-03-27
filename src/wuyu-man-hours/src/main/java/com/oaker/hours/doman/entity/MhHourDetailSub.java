package com.oaker.hours.doman.entity;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.baomidou.mybatisplus.enums.IdType;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.experimental.Accessors;

import java.io.Serializable;
import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.Date;

/**
 * 工时填报详情表子表
 */
@Data
@Accessors(chain = true)
@ApiModel(description = "工时填报详情表子表")
@TableName("mh_hour_detail_sub")
public class MhHourDetailSub implements Serializable {
    
    @ApiModelProperty("主键Id")
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    @ApiModelProperty("工时表详情表Id")
    @TableField(value = "detail_id")
    private Long detailId;

    @ApiModelProperty("工作类型Id")
    @TableField(value = "work_type_id")
    private Long workTypeId;

    @ApiModelProperty("工时")
    @TableField(value = "use_hour")
    private BigDecimal useHour;

    @ApiModelProperty("创建时间")
    @TableField(value = "create_time")
    private Date createTime;

}