package com.system.po;

import java.util.List;

/**
 * Student的扩展类
 */
public class StudentCustom extends Student {
    private String collegeName;

    private List<EnrollmentCustom> selectedCourseList;


    public void setcollegeName(String collegeName) {
        this.collegeName = collegeName;
    }

    public String getcollegeName() {
        return collegeName;
    }

    public void setEnrollmentList(List<EnrollmentCustom> selectedCourseList) {
        this.selectedCourseList = selectedCourseList;
    }

    public List<EnrollmentCustom> getEnrollmentList() {
        return selectedCourseList;
    }

}