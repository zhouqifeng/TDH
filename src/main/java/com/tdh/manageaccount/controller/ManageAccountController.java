package com.tdh.manageaccount.controller;

import com.alibaba.fastjson.JSONObject;
import com.tdh.login.model.User;
import com.tdh.manageaccount.service.ManageAccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;


@Controller
public class ManageAccountController {

    @Autowired
    ManageAccountService ser;

    @RequestMapping(value = "/manageAccount", method = RequestMethod.GET)
    public String toManageAccount(){
        return "manageAccount";
    }

    @RequestMapping(value = "/showaccount", method = RequestMethod.POST)
    @ResponseBody
    public JSONObject findUsersWithLimit(@RequestBody JSONObject jsonObject){
        System.out.println(jsonObject);
        JSONObject jo = null;
        try {
            jo = ser.findUsersWithLimit(jsonObject);
            System.out.println(jo);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return jo;
    }

    @RequestMapping(value = "/account", method = RequestMethod.POST)
    @ResponseBody
    public String saveUser(User user){
        int i = 0;
        try {
            i = ser.saveUser(user);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (i == 1){
            //说明insert语句成功影响1条语句,对数据库中的对应数据成功修改
            return "1";
        }
        //说明insert语句没有影响语句,没有对数据库中的对应数据进行修改
        return "0";
    }

    @RequestMapping(value="/account", method = RequestMethod.PUT)
    @ResponseBody
    public String modifyUserDidById(User user){
        int i = 0;
        try {
            i = ser.modifyUserDidById(user);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (i == 1){
            //说明update语句成功影响1条语句,对数据库中的对应数据成功修改
            return "1";
        }
        //说明update语句没有影响语句,没有对数据库中的对应数据进行修改
        return "0";
    }

    @RequestMapping(value="/account/{id}", method = RequestMethod.DELETE)
    @ResponseBody
    public String removeUserById(@PathVariable int id){
        System.out.println(id);
        User user = new User();
        user.setId(id);
        int i = 0;
        try {
            i = ser.removeUserById(user);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (i == 1){
            //说明delete方法对应的update语句成功影响1条语句,对数据库中的对应数据成功修改
            return "1";
        }
        //说明delete方法对应的update语句没有影响语句,没有对数据库中的对应数据进行修改
        return "0";
    }

}
