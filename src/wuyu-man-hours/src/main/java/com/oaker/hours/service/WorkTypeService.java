package com.oaker.hours.service;

import com.oaker.common.core.domain.IdName;
import com.oaker.common.core.page.TableDataInfo;
import com.oaker.hours.doman.dto.*;

import java.util.List;

/**
 * 工作类型service
 */
public interface WorkTypeService {

    boolean create(WorkTypeSaveDTO saveDTO);

    boolean update(WorkTypeUpdateDto updateDto);

    WorkTypeDetailDto getOne(Long id);

    TableDataInfo query(String name, int pageNum, int pageSize);

    List<IdName> queryAll();

    boolean delete(Long id);


}
