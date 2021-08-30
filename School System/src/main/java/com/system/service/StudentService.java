package com.system.service;

import com.system.po.StudentCustom;

import java.util.List;

public interface StudentService {

    // update student info by id
    void updataById(Integer id, StudentCustom studentCustom) throws Exception;

    // delete student bby id
    void removeById(Integer id) throws Exception;

    // search student by pageNo
    List<StudentCustom> findByPaging(Integer toPageNo) throws Exception;

    // create new student
    Boolean save(StudentCustom studentCustoms) throws Exception;

    // get total number of students
    int getCountStudent() throws Exception;

    // get student info by id
    StudentCustom findById(Integer id) throws Exception;

    // search student info by student name
    List<StudentCustom> findByName(String name) throws Exception;

    // search for all course enrollment by student name
    StudentCustom findStudentAndSelectCourseListByName(String name) throws Exception;

}
