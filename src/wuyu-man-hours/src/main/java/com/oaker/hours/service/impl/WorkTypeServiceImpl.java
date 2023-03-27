package com.oaker.hours.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.oaker.common.constant.HttpStatus;
import com.oaker.common.core.domain.IdName;
import com.oaker.common.core.page.TableDataInfo;
import com.oaker.common.exception.ServiceException;
import com.oaker.common.utils.SecurityUtils;
import com.oaker.hours.doman.columns.Columns;
import com.oaker.hours.doman.dto.*;
import com.oaker.hours.doman.entity.*;
import com.oaker.hours.doman.vo.ProjectHourStatListVO;
import com.oaker.hours.enums.ProjectStatusEnum;
import com.oaker.hours.mapper.ProjectHourMapper;
import com.oaker.hours.mapper.WorkTypeMapper;
import com.oaker.hours.service.WorkTypeService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.time.LocalDate;
import java.util.*;
import java.util.stream.Collectors;

@Service
public class WorkTypeServiceImpl extends ServiceImpl<WorkTypeMapper, WorkType> implements WorkTypeService {

    @Resource
    private WorkTypeMapper workTypeMapper;

    @Transactional(rollbackFor = Exception.class)
    @Override
    public boolean create(WorkTypeSaveDTO saveDTO) {
        Long num = workTypeMapper.countByName(saveDTO.getName());
        if (null != num && num > 0) {
            throw new ServiceException("该工作类型已存在！");
        }
        Long userId = SecurityUtils.getUserId();
        WorkType workType = new WorkType();
        workType.setName(saveDTO.getName());
        workType.setCreateUser(userId);
        workType.setCreateTime(new Date());
        workType.setDeleted(false);

        workTypeMapper.insert(workType);

        return true;
    }

    @Transactional(rollbackFor = Exception.class)
    @Override
    public boolean update(WorkTypeUpdateDto updateDto) {
        Long num = workTypeMapper.countByNameDifId(updateDto.getName(), updateDto.getId());
        if (null != num && num > 0) {
            throw new ServiceException("该工作类型与已有的重复！");
        }
        WorkType workType = workTypeMapper.selectById(updateDto.getId());
        if (null == workType) {
            throw new ServiceException("该工作类型不同存在，无法修改！");
        }
        workType.setName(updateDto.getName());
        workTypeMapper.updateById(workType);

        return true;
    }

    @Override
    public WorkTypeDetailDto getOne(Long id) {
        WorkType workType = workTypeMapper.selectById(id);
        WorkTypeDetailDto dto = new WorkTypeDetailDto();
        BeanUtils.copyProperties(workType, dto);
        return dto;
    }

    @Override
    public TableDataInfo query(String name, int pageNum, int pageSize) {
        TableDataInfo tableDataInfo = new TableDataInfo();
        EntityWrapper<WorkType> wrapper = new EntityWrapper<>();
        wrapper.eq(Columns.deleted, Boolean.FALSE);
        if (StringUtils.isNotBlank(name)) {
            wrapper.like("name", name);
        }
        int count = this.selectCount(wrapper);
        if (count <= 0) {
            tableDataInfo.setCode(HttpStatus.SUCCESS);
            tableDataInfo.setRows(Collections.emptyList());
            return tableDataInfo;
        }
        wrapper.orderDesc(Collections.singleton("id"));
        Page<WorkType> page = new Page<>(pageNum, pageSize);
        Page<WorkType> resultPage = this.selectPage(page, wrapper);
        List<WorkType> dataList = resultPage.getRecords();
        List<WorkTypeListDto> list = new ArrayList<>();
        for (WorkType data : dataList) {
            WorkTypeListDto dto = new WorkTypeListDto();
            BeanUtils.copyProperties(data, dto);
            list.add(dto);

        }
        tableDataInfo.setTotal(count);
        tableDataInfo.setCode(HttpStatus.SUCCESS);
        tableDataInfo.setRows(list);
        return tableDataInfo;
    }

    @Override
    public List<IdName> queryAll() {
        List<IdName> list = workTypeMapper.queryAll();
        return list;
    }

    @Transactional(rollbackFor = Exception.class)
    @Override
    public boolean delete(Long id) {
        EntityWrapper<WorkType> wrapper = new EntityWrapper<>();
        wrapper.eq("id", id);

        WorkType prPrototype = new WorkType();
        prPrototype.setDeleted(true);
        Integer update = baseMapper.update(prPrototype, wrapper);
        return update > 0;
    }
}
