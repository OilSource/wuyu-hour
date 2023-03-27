package com.oaker.hours.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.oaker.hours.doman.columns.Columns;
import com.oaker.hours.doman.entity.MhHourDetailSub;
import com.oaker.hours.doman.entity.MhUserHourMiss;
import com.oaker.hours.mapper.MhHourDetailSubMapper;
import com.oaker.hours.service.MhHourDetailSubService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class MhHourDetailSubImpl extends ServiceImpl<MhHourDetailSubMapper, MhHourDetailSub> implements MhHourDetailSubService {

    @Resource
    private MhHourDetailSubMapper mhHourDetailSubMapper;

    @Transactional
    @Override
    public void deleteByDetailId(Long detailId) {
        mhHourDetailSubMapper.deleteByDetailId(detailId);
    }

    @Override
    public List<MhHourDetailSub> findByDetailId(Long detailId) {
        EntityWrapper<MhHourDetailSub> wrapper = new EntityWrapper<>();
        wrapper.eq(Columns.detailId, detailId);
        return baseMapper.selectList(wrapper);
    }
}
