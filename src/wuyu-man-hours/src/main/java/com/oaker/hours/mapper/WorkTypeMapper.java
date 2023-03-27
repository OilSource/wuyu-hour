package com.oaker.hours.mapper;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.oaker.common.core.domain.IdName;
import com.oaker.hours.doman.dto.ProjectHourStatMonthDetailDTO;
import com.oaker.hours.doman.entity.MhUserHour;
import com.oaker.hours.doman.entity.WorkType;
import com.oaker.hours.doman.vo.ProjectHourStatMonthDetail;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @Description :
 * <功能详细描述>
 * @author: 须尽欢_____
 * @Data : 2021/9/13 14:22
 */
public interface WorkTypeMapper extends BaseMapper<WorkType> {

    long countByName(@Param("name") String name);

    long countByNameDifId(@Param("name") String name,@Param("id") Long id);

    List<IdName> queryAll();




}
