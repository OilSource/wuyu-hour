package com.oaker.hours.doman.dto;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.validation.constraints.NotBlank;

@Data
@ApiModel(value = "WorkTypeSaveDTO", description = "修改工作类型")
public class WorkTypeSaveDTO {


    /**
     * 工作类型
     */
    @NotBlank(message = "工作类型不能为空")
    @ApiModelProperty("工作类型")
    private String name;


}
