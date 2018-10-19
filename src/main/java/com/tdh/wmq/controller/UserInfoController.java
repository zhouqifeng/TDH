package com.tdh.wmq.controller;

import com.tdh.wmq.model.Department;
import com.tdh.login.model.User;
import com.tdh.wmq.service.DepartmentService;
import com.tdh.wmq.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

@Controller
public class UserInfoController {

    @Autowired
    UserService userService;

    @Autowired
    DepartmentService dService;

    @RequestMapping ("/userInfo")
    public String toUserInfo(Model model, HttpSession session){
        int id = ((User) session.getAttribute("sessionUser")).getId();
        User user = userService.findUserById(id);
        Department department = dService.findByDid(user.getDid());
        model.addAttribute("modelDepartment",department);
        model.addAttribute("modelUser",user);
        return "userInfo";
    }

    @ResponseBody
    @RequestMapping(value = "/modifyUserInfo",method = RequestMethod.POST,produces = "application/text;charset=UTF-8")
    public String modifyUserInfo(User user,HttpSession session){
        int id = ((User) session.getAttribute("sessionUser")).getId();
        user.setId(id);
        userService.modifyUserInfo(user);
        session.removeAttribute("sessionUser");
        session.setAttribute("sessionUser", userService.findUserById(id));
        return "您的信息已修改成功";
    }

}
