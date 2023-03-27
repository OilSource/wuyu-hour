package com.oaker.system.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.oaker.common.constant.HttpStatus;
import com.oaker.common.core.page.TableDataInfo;
import com.oaker.common.utils.DateUtils;
import com.oaker.common.utils.FestivalsUtil;
import com.oaker.system.domain.SysHoliday;
import com.oaker.system.domain.dto.HolidayModelDTO;
import com.oaker.system.domain.vo.SysHolidayListVO;
import com.oaker.system.mapper.SysHolidayMapper;
import com.oaker.system.service.SysHolidayService;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.CollectionUtils;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;
import java.time.LocalDate;
import java.util.*;

@Service
public class SysHolidayServiceImpl extends ServiceImpl<SysHolidayMapper, SysHoliday> implements SysHolidayService {

    @Resource
    private SysHolidayMapper sysHolidayMapper;

    public static Map<LocalDate, SysHoliday> map = new HashMap<>();

    @PostConstruct
    public void init() {
        map.clear();
        EntityWrapper<SysHoliday> wrapper = new EntityWrapper<>();
        List<SysHoliday> list = selectList(wrapper);
        if (CollectionUtils.isEmpty(list)) {
            return;
        }
        for (SysHoliday holiday : list) {
            SysHoliday data = new SysHoliday();
            BeanUtils.copyProperties(holiday, data);
            map.put(holiday.getDate(), data);
        }
    }

    @Transactional(rollbackFor = Exception.class)
    @Override
    public boolean updateHoliday(Long id, Boolean holiday) {
        SysHoliday sysHoliday = new SysHoliday();
        sysHoliday.setId(id)
                .setHoliday(holiday);
        boolean flag = this.updateById(sysHoliday);

        //刷新缓存
        this.init();

        return flag;

    }

    @Transactional(rollbackFor = Exception.class)
    public boolean importHolidays(Integer year, List<HolidayModelDTO> holidayList) {
        //1、清除历史节假日信息
        EntityWrapper<SysHoliday> wrapper = new EntityWrapper<>();
        wrapper.eq("year", year);
        this.delete(wrapper);
        //2、存入新的节假日信息
        List<SysHoliday> list = new ArrayList<>();
        Date createTime = new Date();
        for (HolidayModelDTO detail : holidayList) {
            SysHoliday holiday = new SysHoliday();
            LocalDate localDate = DateUtils.strToLocalDate(detail.getDate());
            holiday.setYear(year);
            holiday.setMonth(localDate.getMonthValue());
            holiday.setDay(localDate.getDayOfMonth());
            holiday.setDate(localDate);
            holiday.setHoliday("是".equals(detail.getHoliday()) ? true : false);
            holiday.setCreateTime(createTime);
            list.add(holiday);
        }

        boolean flag = this.insertBatch(list);

        //刷新缓存
        this.init();

        return flag;

    }

    @Override
    public TableDataInfo page(Integer year, Integer month, Integer pageNum, Integer pageSize) {
        TableDataInfo tableDataInfo = new TableDataInfo();
        EntityWrapper<SysHoliday> wrapper = new EntityWrapper<>();
        if (null != year) {
            wrapper.eq("year", year);
        }
        if (null != month) {
            wrapper.eq("month", month);
        }
        int count = selectCount(wrapper);
        if (count <= 0) {
            tableDataInfo.setCode(HttpStatus.SUCCESS);
            tableDataInfo.setRows(Collections.emptyList());
            return tableDataInfo;
        }

        wrapper.orderDesc(Collections.singleton("id"));
        Page<SysHoliday> page = new Page<>(pageNum, pageSize);
        Page<SysHoliday> resultPage = this.selectPage(page, wrapper);
        List<SysHoliday> dataList = resultPage.getRecords();
        List<SysHolidayListVO> list = new ArrayList<>();
        for (SysHoliday data : dataList) {
            SysHolidayListVO dto = new SysHolidayListVO();
            BeanUtils.copyProperties(data, dto);
            list.add(dto);

        }
        tableDataInfo.setTotal(count);
        tableDataInfo.setCode(HttpStatus.SUCCESS);
        tableDataInfo.setRows(list);
        return tableDataInfo;
    }

    @Override
    public SysHoliday getByDate(LocalDate localDate) {
        if (!CollectionUtils.isEmpty(map)) {
            return map.get(localDate);
        }
        EntityWrapper<SysHoliday> wrapper = new EntityWrapper<>();
        wrapper.eq("date", localDate);
        return this.selectOne(wrapper);
    }

    @Override
    public boolean isWorkDay(LocalDate localDate) {
        SysHoliday holiday = getByDate(localDate);
        if (null != holiday && !holiday.getHoliday()) {
            return true;
        }
        return !FestivalsUtil.isWeekend(localDate);
    }

    @Override
    public boolean isAHoliday(LocalDate localDate) {
        SysHoliday holiday = getByDate(localDate);
        if (null != holiday && holiday.getHoliday()) {
            return true;
        }
        return FestivalsUtil.isWeekend(localDate);
    }

}
