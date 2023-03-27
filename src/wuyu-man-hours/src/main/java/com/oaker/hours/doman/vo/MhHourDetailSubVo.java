package com.oaker.hours.doman.vo;

import com.baomidou.mybatisplus.annotations.TableField;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.experimental.Accessors;

import java.math.BigDecimal;

@Data
@Accessors(chain = true)
@ApiModel(value = "MhHourDetailSubVo", description = "成本统计列表查询类")
public class MhHourDetailSubVo {

    @ApiModelProperty("工时表详情表Id")
    private Long detailId;

    @ApiModelProperty("工作类型Id")
    private Long WorkTypeId;

    @ApiModelProperty("工时")
    private BigDecimal useHour;

}
