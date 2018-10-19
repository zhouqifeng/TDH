package com.tdh.zqf.controller;


import com.alibaba.fastjson.JSONObject;
import com.tdh.zqf.model.Leave;
import com.tdh.zqf.model.User;
import com.tdh.zqf.model.Vacation;
import com.tdh.zqf.service.IVacationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
// @RequestMapping("/vacation")
public class VacationController {

    @Autowired
    private IVacationService ser;

    @RequestMapping("/vacationlist")
    public String findVacationList(HttpSession session, Model model) {

        // User sessionUser = new User();
        // sessionUser.setUuid("1");
        // sessionUser.setId(2);
        // sessionUser.setUsername("小刘");
        // sessionUser.setPassword("111");
        // sessionUser.setNickname("xiaoliu");
        // sessionUser.setAge(25);
        // sessionUser.setSex(1);
        // sessionUser.setPhone("18890567734");
        // sessionUser.setAddress("上海");
        // sessionUser.setIsadmin(1);
        // sessionUser.setDid(1);
        //
        // session.setAttribute("sessionUser",sessionUser);

        User user = (User) session.getAttribute("sessionUser");
        if (user.getIsadmin() == 0) {
            try {
                List<Vacation> list = ser.findByapplyId(user.getId());
                model.addAttribute("userVacationList", list);
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else {
            try {
                List<Vacation> list = ser.findAll(user.getId());
                List<User> adminlist = ser.findAdmin();
                model.addAttribute("adminlist", adminlist);
                model.addAttribute("userVacationList", list);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        return "vacation";
    }

    @RequestMapping("/addvacation")
    @ResponseBody
    public String addVacation(Leave leave, Model model) {

        try {
            ser.saveVacation(leave);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return "success";
    }

    @RequestMapping(value="/approvalvacation",method = RequestMethod.POST,produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String auditVacationToDB(@RequestBody JSONObject jsonObject) {
        System.out.println("修改");
        int id = jsonObject.getInteger("id");
        int state = jsonObject.getInteger("state");
        try {
            ser.modifyById(id, state);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return "success";
    }
}
