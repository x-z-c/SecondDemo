package com.controller;

import com.pojo.*;
import com.service.PaperService;

import java.math.BigDecimal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@Controller
@RequestMapping("/paper")
public class PaperController {
    @Autowired
    private PaperService paperService;
    @RequestMapping("/allPaper")
    public String list(Model model) {
        List<Shop> list = paperService.queryAllPaper();
        model.addAttribute("list", list);
        return "allPaper";
    }

    @RequestMapping("/selbyzy/{jid}")
    public String selbyzy(Model model,@PathVariable("jid") Long jid) {
        System.out.println("==============id:"+jid);
        List<Student> student = paperService.selbyzy(jid);
        model.addAttribute("student",student );
        return "zy";
    }


    @RequestMapping("/selbyids/{xid}")
    public String selbyids(Model model,@PathVariable("xid") Long xid) {
        System.out.println("==============id:"+xid);
      StudentEntity studentEntity = paperService.selbyids(xid);
        model.addAttribute("se",studentEntity );
        System.out.println(studentEntity.getXjg()+"....");
        return "addPJ";
    }


    @RequestMapping("/selbyall")
    public String lista(Model model) {
        List<Teacher> listq = paperService.selbyall();
        model.addAttribute("listq", listq);
        System.out.println(listq);
        return "allPapers";
    }

    @RequestMapping("/selbyalls")
    public String listaa(Model model) {
        List<Teacher> listq = paperService.selbyall();
        model.addAttribute("listq", listq);
        System.out.println(listq);
        return "student";
    }


    @RequestMapping("/queryByname")
    public String lista(Model model,String name) {
        List<Shop> list = paperService.queryByname(name);
        model.addAttribute("list", list);
        return "allPaper";
    }


    @RequestMapping("toAddpaper/{jid}")
         public  String toAddPaper(Model model,@PathVariable("jid") Long jid){
        model.addAttribute("jid", jid);
        return "addzy";
    }


    @RequestMapping("/addPaper")
    public String addPaper(Shop shop){
        paperService.addPaper(shop);
        return "redirect:/paper/allPaper";
    }

    @RequestMapping("/addStudent")
    public String addPapers(Student student){
        paperService.addStudent(student);
        System.out.println(student.getJid()+"aaa");
        return "redirect:/paper/selbyalls";
    }

    @RequestMapping("/addPapers")
    public String addPapers(Teacher teacher){
        paperService.addPapers(teacher);
        System.out.println(teacher.getJrw()+".........");
        return "redirect:/paper/selbyall";
    }

    @RequestMapping("/del/{jid}")
    public  String deletePaper(@PathVariable("jid") Long jid){
        paperService.deletePaperById(jid);
        return "redirect:/paper/selbyall";
    }
    @RequestMapping("/toUpdatePaper/{id}")
    public String toUpdatePaper(Model model,@PathVariable("id") Long id) {
        System.out.println("==============id:"+id);
        Shop p = paperService.queryById(id);
        System.out.println("paperNme:"+p.getName());
        model.addAttribute("paper",p );
        return "updatePaper";
    }
    @RequestMapping("/updatePaper")
    public String updatePaper(Model model, Shop shop) {
        paperService.updatePaper(shop);
        shop = paperService.queryById(shop.getId());
        model.addAttribute("shop", shop);
        return "redirect:/paper/allPaper";
    }

      @RequestMapping("/updatestudent")
    public  String updatestudent(Model model,StudentEntity studentEntity){
         paperService.updatestudent(studentEntity);
         studentEntity=paperService.selbyids(studentEntity.getXid());
          model.addAttribute("studentEntity", studentEntity);
          return "redirect:/paper/selbyall";
      }

    @RequestMapping("/selectByBJ")
    public String selectByBJ(Model model) {
        List<StudentEntity> list = paperService.selectByBJ1();
        model.addAttribute("list",list );
        return "xbj";
    }

    @RequestMapping("/selectByName")
    public ModelAndView selectByName(String xbj){
        ModelAndView mav=new ModelAndView();
        List<StudentEntity> list1=paperService.selectByName(xbj);
        mav.addObject("list1",list1);
        List<StudentEntity> list=paperService.selectByBJ1();
        mav.addObject("list",list);
        int count=paperService.selectByBJ(xbj);
        int count1=paperService.selectAllCount(xbj);
        mav.addObject("xbj",xbj);
        mav.addObject("count",count);
        mav.addObject("count1",count1);
        System.out.println(count+"aaa");
        System.out.println(count1+"bbb");
        float wcx=0.1f;
        wcx=(float) count/count1*100;
        BigDecimal b   =   new   BigDecimal(wcx);
        float   wcx1   =   b.setScale(1,   BigDecimal.ROUND_HALF_UP).floatValue();
        System.out.println(wcx1);
        mav.addObject("wcx1",wcx1);
        mav.setViewName("xbj");
        return mav;
    }


}
