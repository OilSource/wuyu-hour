package com.oaker.hours.doman.vo;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;
import org.springframework.validation.annotation.Validated;

import javax.validation.constraints.NotNull;
import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.Date;
import java.util.List;

/**
 * @Description : 工时详情
 * <功能详细描述>
 * @author: 须尽欢_____
 * @Data : 2021/9/15 18:50
 */
@Data
@Accessors(chain = true)
@ApiModel(value = "UserHourDetailVO", description = "工时详情")
public class UserHourDetailVO {

    /**
     * id
     */
    @ApiModelProperty("id")
    private Long id;

    @ApiModelProperty("工时填报表id")
    private Long hourId;

    @ApiModelProperty("用户id")
    private Long userId;

    @ApiModelProperty("项目id ")
    private Long projectId;

    @ApiModelProperty("项目名称")
    private String projectName;

    @ApiModelProperty("工时")
    private BigDecimal useHour;

    @ApiModelProperty(value = "填报加班工时")
    private BigDecimal workOvertimeHour;

    @ApiModelProperty(value = "填报变更工时")
    private BigDecimal changeHour;

    @ApiModelProperty(value = "填报调休工时")
    private BigDecimal timeOffHour;

    @ApiModelProperty(value = "填报请假工时")
    private BigDecimal leaveHour;

    @ApiModelProperty("填报日期")
    private LocalDate fillDate;

    @ApiModelProperty("日报内容")
    private String daily;

    @ApiModelProperty("更新时间")
    private Date updateTime;

    @ApiModelProperty("创建时间")
    private Date createTime;

    @ApiModelProperty("审批状态")
    private Integer approveStatus;

    @ApiModelProperty("工作类型工时")
    private List<SubHour> workTypeHourList;

    @Data
    @AllArgsConstructor
    @NoArgsConstructor
    @ApiModel(description = "工时详情")
    public static class SubHour {

        @ApiModelProperty("工作类型Id")
        private Long WorkTypeId;

        @ApiModelProperty(value = "工时")
        private BigDecimal userHour;
    }


}
