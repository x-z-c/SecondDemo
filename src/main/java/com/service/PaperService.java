package com.service;

import com.pojo.*;

import java.util.List;

public interface PaperService {
    List<Shop> queryAllPaper();
    int addPaper(Shop shop);
    int deletePaperById(long jid);
    int updatePaper(Shop shop);
    Shop queryById(long id);
    List<Shop> queryByname(String name);
    List<Teacher> selbyall();
    int addPapers(Teacher teacher);
    int addStudent(Student student);
    List<Student>   selbyzy(long jid);
    public User login(User user);
    StudentEntity selbyids(long xid);
    int updatestudent(StudentEntity studentEntity);
    int selectByBJ(String xbj);
    List<StudentEntity> selectByBJ1();
    List<StudentEntity> selectByName(String xbj);
    int selectAllCount(String xbj);
}
