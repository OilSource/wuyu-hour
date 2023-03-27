package com.oaker.web.controller.hour;

import com.oaker.common.annotation.Log;
import com.oaker.common.core.controller.BaseController;
import com.oaker.common.core.domain.AjaxResult;
import com.oaker.common.core.domain.IdName;
import com.oaker.common.core.page.PageDomain;
import com.oaker.common.core.page.TableDataInfo;
import com.oaker.common.enums.BusinessType;
import com.oaker.hours.doman.dto.WorkTypeDetailDto;
import com.oaker.hours.doman.dto.WorkTypeSaveDTO;
import com.oaker.hours.doman.dto.WorkTypeUpdateDto;
import com.oaker.hours.service.WorkTypeService;
import io.swagger.annotations.Api;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

@Validated
@RestController
@RequestMapping("/system/project/work")
@Api(tags = "A-工作类型管理")
public class WorkTypeController extends BaseController {

    @Resource
    private WorkTypeService workTypeService;

    /**
     * 增加工作类型
     */
    @PostMapping("/create")
    @PreAuthorize("@ss.hasPermi('mh:project:work:add')")
    @Log(title = "新增工作类型", businessType = BusinessType.INSERT)
    public AjaxResult save(@Validated @RequestBody WorkTypeSaveDTO dto) {
        return toAjax(workTypeService.create(dto));
    }

    @PutMapping("/edit")
    @PreAuthorize("@ss.hasPermi('system:project:work:edit')")
    @Log(title = "修改工作类型", businessType = BusinessType.UPDATE)
    public AjaxResult edit(@Validated @RequestBody WorkTypeUpdateDto dto) {
        return toAjax(workTypeService.update(dto));
    }

    /**
     * 移除工作类型
     */
    @DeleteMapping("/remove/{id}")
    @PreAuthorize("@ss.hasPermi('mh:project:work:remove')")
    @Log(title = "删除工作类型", businessType = BusinessType.DELETE)
    public AjaxResult remove(@PathVariable Long id) {
        return toAjax(workTypeService.delete(id));
    }

    /**
     * 查看工作类型
     */
    @GetMapping("/get/{id}")
    @PreAuthorize("@ss.hasPermi('mh:project:work:list')")
    public AjaxResult get(@PathVariable Long id) {
        WorkTypeDetailDto dto = workTypeService.getOne(id);
        return AjaxResult.success(dto);
    }

    /**
     * 查询工作类型列表
     */
    @GetMapping("/list")
    public AjaxResult queryList() {
        List<IdName> list = workTypeService.queryAll();
        return AjaxResult.success(list);
    }

    /**
     * 分页查询工作类型
     */
    @GetMapping(value = "/query")
    @PreAuthorize("@ss.hasPermi('system:project:work:select')")
    public TableDataInfo query(String projectStatus, PageDomain pageDomain) {
        return workTypeService.query(projectStatus, pageDomain.getPageNum(), pageDomain.getPageSize());
    }


}
