package com.oaker.hours.doman.entity;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.baomidou.mybatisplus.enums.IdType;
import lombok.Data;
import lombok.experimental.Accessors;

import java.util.Date;

@Data
@Accessors(chain = true)
@TableName("mh_work_type")
public class WorkType {

    /**
     * 主键
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    /**
     * 工作类型
     */
    @TableField(value = "name")
    private String name;

    /**
     * 创建者
     */
    @TableField(value = "create_user")
    private Long createUser;

    /**
     * 创建时间
     */
    @TableField(value = "create_time")
    private Date createTime;

    /**
     * 删除标识0:未删除,1:已删除
     */
    @TableField(value = "deleted")
    private Boolean deleted;


}
