package com.oaker.common.utils.poi.vo;

/**
 * @program: picc-common
 * @description: 赋值下拉框
 * @author: LiuTongqing
 * @create: 2021-04-02 16:46
 **/

public class SetSelect {

    private Integer col;

    private String[] data;

    public Integer getCol() {
        return col;
    }

    public void setCol(Integer col) {
        this.col = col;
    }

    public String[] getData() {
        return data;
    }

    public void setData(String[] data) {
        this.data = data;
    }

    public SetSelect() {
    }

    public SetSelect(Integer col, String[] data) {
        this.col = col;
        this.data = data;
    }
}
