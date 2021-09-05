package com.system.po;

/**
 * teacher扩展类
 */
public class TeacherCustom extends Teacher {
    //Department名
    private String collegeName;

    public void setcollegeName(String collegeName) {
        this.collegeName = collegeName;
    }

    public String getcollegeName() {
        return collegeName;
    }
}
