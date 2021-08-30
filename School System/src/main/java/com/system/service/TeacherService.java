package com.system.service;

import com.system.po.TeacherCustom;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public interface TeacherService {

    // search for teacher by id
    void updateById(Integer id, TeacherCustom teacherCustom) throws Exception;

    // remove teacher by id
    void removeById(Integer id) throws Exception;

    // search for teacher by pageNo
    List<TeacherCustom> findByPaging(Integer toPageNo) throws Exception;

    // update/save teacher's info
    Boolean save(TeacherCustom teacherCustom) throws Exception;

    // get the total number of teachers
    int getCountTeacher() throws Exception;

    // search teacher info by teacher id (unique)
    TeacherCustom findById(Integer id) throws Exception;

    // search teacher info by teacher name (there might be more than one)
    List<TeacherCustom> findByName(String name) throws Exception;

    // get all teacher
    List<TeacherCustom> findAll() throws Exception;
}
