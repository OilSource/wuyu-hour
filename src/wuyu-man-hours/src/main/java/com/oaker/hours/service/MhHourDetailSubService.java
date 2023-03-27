package com.oaker.hours.service;

import com.baomidou.mybatisplus.service.IService;
import com.oaker.hours.doman.entity.MhHourDetailSub;

import java.util.List;

public interface MhHourDetailSubService extends IService<MhHourDetailSub> {

    void deleteByDetailId(Long detailId);

    List<MhHourDetailSub> findByDetailId(Long detailId);

}
