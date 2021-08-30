package com.system.service;

import com.system.po.CourseCustom;

import java.util.List;

/**
 * CourseService课程信息.
 */
public interface CourseService {
    // Update Course Info
    void updateById(Integer id, CourseCustom courseCustom) throws Exception;

    // Delete course by id
    Boolean removeById(Integer id) throws Exception;

    // navigate by page
    List<CourseCustom> findByPaging(Integer toPageNo) throws Exception;

    // insert new course info
    Boolean save(CourseCustom couseCustom) throws Exception;

    // get total number of courses
    int getCountCourse() throws Exception;

    // search by course id
    CourseCustom findById(Integer id) throws Exception;

    // search by course name
    List<CourseCustom> findByName(String name) throws Exception;

    //根据教师id查找课程
    List<CourseCustom> findByTeacherID(Integer id) throws Exception;
}
