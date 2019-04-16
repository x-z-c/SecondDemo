package com.controller;


import com.pojo.Resulet;
import com.pojo.User;
import com.service.PaperService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("user")
public class UserCoutorller {
    @Autowired
    private PaperService userServicel;

    @RequestMapping("login")
    @ResponseBody
    public Resulet login(HttpServletResponse response, HttpServletRequest request) {
        String username = request.getParameter("username");
        String pwd = request.getParameter("pwd");
        String type=request.getParameter("s");
        Resulet rs = new Resulet();
        User u = userServicel.login(new User(username, pwd,type));

        if(u!=null){
            request.getSession().setAttribute("user",u);
            rs.setStatus(1);
            rs.setTs(type);
            rs.setMessage("登录成功");
        }else{

            rs.setStatus(0);
            rs.setMessage("登录失败,账号或密码错误!");
        }
        return rs;
    }
}
