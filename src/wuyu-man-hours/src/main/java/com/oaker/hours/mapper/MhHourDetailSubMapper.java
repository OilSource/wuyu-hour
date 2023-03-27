package com.oaker.hours.mapper;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.oaker.hours.doman.entity.MhHourDetailSub;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface MhHourDetailSubMapper extends BaseMapper<MhHourDetailSub> {

    void deleteByDetailId(@Param("detailId") Long detailId);

    List<MhHourDetailSub> findByDetailId(@Param("detailId") Long detailId);

}
