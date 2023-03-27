package com.oaker.hours.doman.dto;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import org.springframework.validation.annotation.Validated;

import javax.validation.Valid;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import java.math.BigDecimal;
import java.util.List;

/**
 * @Description : 修改工时填报
 * <功能详细描述>
 * @author: 须尽欢_____
 * @Data : 2021/9/16 10:39
 */
@Data
@ApiModel(value = "UserHourApproveDTO", description = "用户审批填报工时")
public class UserHourApproveDTO {

    @NotNull(message = "工时填报id不能为空")
    @ApiModelProperty("工时填报表id")
    private Long hourId;


    @NotNull(message = "工时状态不能为空")
    @ApiModelProperty("工时状态")
    private Integer status;


}
