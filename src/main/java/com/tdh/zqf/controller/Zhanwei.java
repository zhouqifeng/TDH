package com.tdh.zqf.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Zhanwei {

    @RequestMapping("/login")
    public String login(){
        //即将跳转到sign.jsp界面
        System.out.println("即将进入出勤界面");
        return "index";
    }

    //即将跳转到sign.jsp界面
    @RequestMapping("/tosign")
    public String doSign() {
        System.out.println("即将进入出勤界面");
        return "sign";
    }

}
