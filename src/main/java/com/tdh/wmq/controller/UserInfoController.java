package com.tdh.wmq.controller;

import com.tdh.wmq.model.Department;
import com.tdh.wmq.model.User;
import com.tdh.wmq.service.DepartmentService;
import com.tdh.wmq.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class UserInfoController {

    @Autowired
    UserService userService;

    @Autowired
    DepartmentService dService;

    @RequestMapping ("/userInfo")
    public String toUserInfo(Model model){
        User user = userService.findUserById(1);
        Department department = dService.findByDid(user.getDid());
        model.addAttribute("modelDepartment",department);
        model.addAttribute("modelUser",user);
        return "userInfo";
    }

    @ResponseBody
    @RequestMapping(value = "/modifyUserInfo",method = RequestMethod.POST,produces = "application/text;charset=UTF-8")
    public String modifyUserInfo(User user){
        user.setId(1);
        userService.modifyUserInfo(user);
        return "您的信息已修改成功";
    }

}
