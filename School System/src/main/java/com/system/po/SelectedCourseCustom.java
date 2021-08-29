package com.system.po;

/**
 * Created by Jessie on 2021/7/29.
 */
public class SelectedCourseCustom extends SelectedCourse {
    private StudentCustom studentCustom;

    private CourseCustom courseCustom;

    // This course is finished or not
    private Boolean over = false;


    public Boolean getOver() {
        return over;
    }

    public void setOver(Boolean over) {
        this.over = over;
    }

    public StudentCustom getStudentCustom() {
        return studentCustom;
    }

    public void setStudentCustom(StudentCustom studentCustom) {
        this.studentCustom = studentCustom;
    }

    public CourseCustom getCourseCustom() {
        return courseCustom;
    }

    public void setCourseCustom(CourseCustom couseCustom) {
        this.courseCustom = couseCustom;
    }
}
