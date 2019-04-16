package com.dao;

import com.pojo.*;

import java.util.List;

public interface PaperDao {
    List<Shop> queryAllPaper();
    int addPaper(Shop shop);
    int deletePaperById(long jid);
    int addStudent(Student student);
    int updatePaper(Shop shop);
    List<Shop> queryByname(String name);
    List<Teacher> selbyall();
    int addPapers(Teacher teacher);
    List<Student>   selbyzy(long jid);
    User login(User user);
    Shop queryById(long id);
    StudentEntity selbyids(long xid);
    int updatestudent(StudentEntity studentEntity);
    int selectByBJ(String xbj);
    List<StudentEntity> selectByBJ1();
    List<StudentEntity> selectByName(String xbj);
    int selectAllCount(String xbj);
}
