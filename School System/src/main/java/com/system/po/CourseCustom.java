package com.system.po;

/**
 * Course扩展类    课程
 */
public class CourseCustom extends Course {

    //Department名
    private String collegeName;

    public void setcollegeName(String collegeName) {
        this.collegeName = collegeName;
    }

    public String getcollegeName() {
        return collegeName;
    }

}
