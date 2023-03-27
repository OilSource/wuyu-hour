package com.oaker.hours.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.oaker.hours.doman.columns.Columns;
import com.oaker.hours.doman.entity.MhHourDetail;
import com.oaker.hours.mapper.MhHourDetailMapper;
import com.oaker.hours.service.MhHourDetailService;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import java.math.BigDecimal;
import java.sql.Wrapper;
import java.time.LocalDate;
import java.util.List;
import java.util.Objects;

/**
 * @Description :
 * <功能详细描述>
 * @author: 须尽欢_____
 * @Data : 2021/9/13 15:14
 */
@Service
public class MhHourDetailServiceImpl extends ServiceImpl<MhHourDetailMapper, MhHourDetail> implements MhHourDetailService {

    @Override
    public MhHourDetail queryProjectUserHour(Long projectId, Long userId, LocalDate localDate) {
        MhHourDetail mhHourDetail = new MhHourDetail();
        mhHourDetail.setProjectId(projectId)
                .setUserId(userId).setUseHour(BigDecimal.ZERO);
        EntityWrapper<MhHourDetail> wrapper = new EntityWrapper<>();
        wrapper.eq(Columns.MhHourDetail.projectId, projectId)
                .and()
                .eq(Columns.MhHourDetail.userId, userId)
                .eq(Columns.MhHourDetail.approveStatus,1);
        if (!Objects.isNull(localDate)) {
            wrapper.eq(Columns.MhHourDetail.fillDate, localDate);
            mhHourDetail.setFillDate(localDate);
        }
        List<MhHourDetail> mhHourDetails = baseMapper.selectList(wrapper);
        if(!CollectionUtils.isEmpty(mhHourDetails)){
            for(MhHourDetail detail:mhHourDetails){
                    mhHourDetail.setDaily(detail.getDaily());
                    mhHourDetail.setUseHour(mhHourDetail.getUseHour().add(detail.getUseHour()));
                    mhHourDetail.setProjectStatus(detail.getProjectStatus());
                    mhHourDetail.setEveryday(detail.getEveryday());
                    mhHourDetail.setHourId(detail.getHourId());
            }
            return  mhHourDetail;
        }
        return null;
    }

}
