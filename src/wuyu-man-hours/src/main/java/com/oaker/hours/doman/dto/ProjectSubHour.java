package com.oaker.hours.doman.dto;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import org.springframework.validation.annotation.Validated;

import javax.validation.Valid;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.List;

/**
 * @Description : 用户填报工时
 * <功能详细描述>
 * @author: 须尽欢_____
 * @Data : 2021/9/13 13:55
 */
@Data
@ApiModel(value = "ProjectSubHour", description = "工作类型工时")
public class ProjectSubHour {

    @NotNull(message = "工作类型Id不能为空")
    @ApiModelProperty("工作类型Id")
    private Long WorkTypeId;

    @NotNull(message = "填报工时不能为空")
    @ApiModelProperty(value = "填报工时", required = true)
    private BigDecimal hour;


}
