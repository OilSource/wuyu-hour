package com.oaker.hours.doman.dto;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.util.Date;

@Data
@ApiModel(value = "WorkTypeUpdateDto", description = "")
public class WorkTypeListDto {

    /**
     * 主键
     */
    @ApiModelProperty("主键")
    private Long id;

    /**
     * 工作类型
     */
    @ApiModelProperty("工作类型")
    private String name;

    /**
     * 创建时间
     */
    @ApiModelProperty("创建时间")
    private Date createTime;


}
