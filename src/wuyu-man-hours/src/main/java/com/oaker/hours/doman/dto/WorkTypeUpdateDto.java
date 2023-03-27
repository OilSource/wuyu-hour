package com.oaker.hours.doman.dto;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableName;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.experimental.Accessors;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.util.Date;

@Data
@ApiModel(value = "WorkTypeUpdateDto", description = "")
public class WorkTypeUpdateDto {

    /**
     * 主键
     */
    @NotNull
    @ApiModelProperty("主键")
    private Long id;

    /**
     * 工作类型
     */
    @NotBlank(message = "工作类型不能为空")
    @ApiModelProperty("工作类型")
    private String name;


}
