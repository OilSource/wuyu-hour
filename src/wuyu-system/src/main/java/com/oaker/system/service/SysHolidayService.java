package com.oaker.system.service;

import com.baomidou.mybatisplus.service.IService;
import com.oaker.common.core.page.TableDataInfo;
import com.oaker.system.domain.SysHoliday;
import com.oaker.system.domain.dto.HolidayModelDTO;

import java.time.LocalDate;
import java.util.List;

public interface SysHolidayService extends IService<SysHoliday> {

    boolean updateHoliday(Long id,Boolean holiday);

    boolean importHolidays(Integer year, List<HolidayModelDTO> list);

    TableDataInfo page(Integer year, Integer month, Integer pageNum, Integer pageSize);

    SysHoliday getByDate(LocalDate localDate);

    boolean isWorkDay(LocalDate localDate);

    boolean isAHoliday(LocalDate toString);


}
