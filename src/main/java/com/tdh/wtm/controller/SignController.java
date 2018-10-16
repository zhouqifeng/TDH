package com.tdh.wtm.controller;

import com.tdh.wtm.service.SignServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;


@Controller
public class sign {
    @Autowired
    private SignServiceImpl ser;

    @RequestMapping("/login")
    public String login(){
        //即将跳转到login.jsp界面
            System.out.println("即将进入sh界面");
            return "index";
        }

    //即将跳转到sign.jsp界面
    @RequestMapping("/tosign")
    public String doSign(HttpSession session) {
     //获取sessionUser里的值     User user=session.getAttribute("sessionUser");
     //获取id     Integer id=user.getId();
     //获取签到天数
     //Integer count=ser.findById(id);
        System.out.println("即将进日常签到界面");

        return "sign";
    }





}