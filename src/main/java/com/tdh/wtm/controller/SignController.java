package com.tdh.wtm.controller;

import com.tdh.wtm.model.Sign;
import com.tdh.wtm.service.SignServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;


@Controller
public class SignController {
    @Autowired
    SignServiceImpl ser;

    //即将跳转到sign.jsp界面
    @RequestMapping("/tosign")
    public String doSign(HttpSession session) throws Exception{
     //获取sessionUser里的值     User user=session.getAttribute("sessionUser");
     //获取id     Integer id=user.getId();
     //获取签到天数
     //Integer count=ser.findById(id);
        Integer id=1;

        //获取签到的年月日
        Date date=new Date();
        SimpleDateFormat t=new SimpleDateFormat("yyyy-MM-dd");
        Calendar calendar = Calendar.getInstance();//日历对象
        calendar.setTime(date);//设置当前日期
        int year = calendar.get(Calendar.YEAR);//获取年份
        int month = calendar.get(Calendar.MONTH) + 1;//获取月份
        int day=calendar.get(Calendar.DAY_OF_MONTH);

        //封装数据
        Sign sign=new Sign();
        sign.setYear(year);
        sign.setMonth(month);
        sign.setSid(id);
        sign.setDay(day);


        //查找签到次数
        Integer count=ser.findById(sign);
        System.out.println(count);
        session.setAttribute("count",count);
        Object attribute = session.getAttribute("count");
        System.out.println(attribute);
        System.out.println("即将进日常签到界面");
        return "sign";
    }

    //插入签到记录
    @RequestMapping("/save")
    public String doSave(Sign sign,HttpSession session)throws Exception{
        sign.setMontent(1);

        //获取签到的年月日
        Date date=new Date();
        Calendar calendar = Calendar.getInstance();//日历对象
        calendar.setTime(date);//设置当前日期
        int year = calendar.get(Calendar.YEAR);//获取年份
        int month = calendar.get(Calendar.MONTH) + 1;//获取月份
        int day=calendar.get(Calendar.DAY_OF_MONTH);
        //封装数据
        sign.setSid(1);
        sign.setYear(year);
        sign.setMonth(month);
        sign.setDay(day);
        session.setAttribute("sign",sign);
        //判断今天是否签到过
        Integer b=ser.findByIdFalse(sign);
        if(b>0){
            //插入签到记录
            Integer a=ser.save(sign);

            Integer count=ser.findById(sign);
            session.setAttribute("count",count);


            return "sign";

        }else{
            return "sign";
        }

}
}