package com.tdh.login.controller;

import com.alibaba.fastjson.JSONObject;
import com.tdh.login.model.User;
import com.tdh.login.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
public class LoginController {

    @Autowired
    LoginService ser;

    @RequestMapping(value = "/login")
    public String tologin() {
        return "login";
    }

    @RequestMapping(value = "/dologin", method = RequestMethod.POST)
    @ResponseBody
    public String dologin(User user, HttpServletRequest request) {

        User finduser = null;
        try {
            finduser = ser.findUserByUsernameAndPassword(user);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (finduser != null && finduser.getIsadmin() != 2) {
            // user存在,说明用户名和密码正确匹配,返回"1",并将该用户放入session域中
            request.getSession().setAttribute("sessionUser",finduser);
            return "1";
        }
        // user不存在或已离职，返回"0"
        return "0";
    }

    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String toIndex(){
        return "index";
    }

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(HttpServletRequest request){
        request.getSession().removeAttribute("sessionUser");
        return "redirect:/login";
    }

}
