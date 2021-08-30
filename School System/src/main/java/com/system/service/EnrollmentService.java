package com.system.service;


import com.system.po.EnrollmentCustom;
import com.system.po.StudentCustom;

import java.util.List;

public interface EnrollmentService {

    // search enrollment by course ID
    List<EnrollmentCustom> findByCourseID(Integer id) throws Exception;

    // search enrollment by pageNo
    List<EnrollmentCustom> findByCourseIDPaging(Integer page, Integer id) throws Exception;

    // get number of students
    Integer countByCourseID(Integer id) throws Exception;

    // Search for the grade of student
    EnrollmentCustom findOne(EnrollmentCustom selectedCourseCustom) throws Exception;

    // grade
    void updataOne(EnrollmentCustom selectedCourseCustom) throws Exception;

    // enrollment
    void save(EnrollmentCustom selectedCourseCustom) throws Exception;

    // sear for a course by student id
    List<EnrollmentCustom> findByStudentID(Integer id) throws Exception;

    // drop the course
    void remove(EnrollmentCustom selectedCourseCustom) throws Exception;

}
