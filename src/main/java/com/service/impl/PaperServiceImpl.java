package com.service.impl;

import com.dao.PaperDao;
import com.pojo.*;
import com.service.PaperService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



import java.util.List;

@Service
public class PaperServiceImpl implements PaperService {
    @Autowired
    private PaperDao paperDao;
    @Override
    public List<Shop> queryAllPaper() {
        return paperDao.queryAllPaper();
    }
    @Override
    public int addPaper(Shop shop){
        return paperDao.addPaper(shop);
    }
    @Override
    public  int deletePaperById(long jid){
        return paperDao.deletePaperById(jid);
    }
    @Override
    public int updatePaper(Shop shop){
        return paperDao.updatePaper(shop);
    }
    public Shop queryById(long id){
        return paperDao.queryById(id);
    }
    @Override
    public List<Shop> queryByname(String name) {
        return paperDao.queryByname(name);
    }

    @Override
    public List<Teacher> selbyall() {
        return paperDao.selbyall();
    }

    @Override
    public int addPapers(Teacher teacher) {
        return paperDao.addPapers(teacher);
    }

    @Override
    public int addStudent(Student student) {
        return paperDao.addStudent(student);
    }

    public List<Student> selbyzy(long jid){
        return paperDao.selbyzy(jid);
    }

    @Override
    public User login(User user) {
        return paperDao.login(user);
    }

    @Override
    public StudentEntity selbyids(long xid) {
        return paperDao.selbyids(xid);
    }

    @Override
    public int updatestudent(StudentEntity studentEntity) {
        return paperDao.updatestudent(studentEntity);
    }

    @Override
    public int selectByBJ(String xbj) {
        return paperDao.selectByBJ(xbj);
    }

    @Override
    public List<StudentEntity> selectByBJ1() {
        return paperDao.selectByBJ1();
    }

    @Override
    public List<StudentEntity> selectByName(String xbj) {
        return paperDao.selectByName(xbj);
    }

    @Override
    public int selectAllCount(String xbj) {
        return paperDao.selectAllCount(xbj);
    }


}


