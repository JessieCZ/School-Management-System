package com.system.mapper;

import com.system.po.PagingVO;
import com.system.po.StudentCustom;

import java.util.List;

/**
 * Created by Jessie on 2021/6/28.
 */
public interface StudentMapperCustom {

    //分页查询学生信息
    List<StudentCustom> findByPaging(PagingVO pagingVO) throws Exception;

    //查询学生信息，和其选课信息
    StudentCustom findStudentAndSelectCourseListById(Integer id) throws Exception;

}
