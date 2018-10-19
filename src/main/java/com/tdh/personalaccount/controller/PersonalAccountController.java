package com.tdh.personalaccount.controller;

import com.tdh.login.model.User;
import com.tdh.personalaccount.service.PersonalAccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
public class PersonalAccountController {

    @Autowired
    PersonalAccountService ser;

    @RequestMapping(value = "/personalAccount", method = RequestMethod.GET)
    public String toPersonalAccount(){
        return "personalAccount";
    }

    @RequestMapping(value = "/personalAccount", method = RequestMethod.POST)
    @ResponseBody
    public String findUser(User user){
        User finduser = null;
        try {
            finduser = ser.findUserByUsername(user);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (finduser == null){
            //没找到输入的username对应的User对象,数据库中没有相应数据,该username可用
            return "1";
        }
        //输入的username有对应的User对象,数据库中有相应数据,该username重复,不可用
        return "0";
    }

    @RequestMapping(value="/personalAccount", method = RequestMethod.PUT)
    @ResponseBody
    public String modifyUser(User user, HttpServletRequest request){
        int i = 0;
        try {
            i = ser.modifyUserById(user);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (i == 1){
            //说明update语句成功影响1条语句,对数据库中的对应数据成功修改
            User findUser = null;
            try {
                findUser = ser.findUserById(user);
            } catch (Exception e) {
                e.printStackTrace();
            }
            request.getSession().setAttribute("sessionUser",findUser);
            return "1";
        }
        //说明update语句没有影响语句,没有对数据库中的对应数据进行修改
        return "0";
    }

}
