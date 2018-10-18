package com.tdh.wxl.controller;

import com.alibaba.fastjson.JSONObject;
import com.tdh.wxl.model.Mail;
import com.tdh.wxl.model.User;
import com.tdh.wxl.service.MailService;
import com.tdh.wxl.util.Constants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.FileInputStream;

import java.io.IOException;
import java.util.List;
import java.util.UUID;

@Controller
public class MailController {
    @Autowired
    MailService mailService;

//    @RequestMapping("/index")
//    public String toIndex(){
//        return "index";
//    }
   @RequestMapping(value="/{path}",method = RequestMethod.GET)
    public String path(@PathVariable String path){
        return path;
    }
    /*写邮件*/
    @RequestMapping(value = "/writemail",method = RequestMethod.GET,produces="application/json;charset=UTF-8")
    public String toSend(HttpServletRequest request){
        User user=new User();
        //user.setId(1);
        List<User> receivers=mailService.selectAll(user);
        if(receivers!=null){
            request.setAttribute("receivers",receivers);
            for (User user1:receivers) {
                //System.out.println(user1.getId()+":"+user1.getNickname());
            }
        }else{
            System.out.println("抱歉没有查到数据");
        }
        return "writemail";
    }
    /*发送邮件*/
    @RequestMapping(value="/tosendmail",method = RequestMethod.POST,produces="application/json;charset=UTF-8")
    public String toSend(Mail mail, MultipartFile file,HttpServletRequest request) throws IOException {
        String attachment="upload/"+getUUID(file);
        mail.setAttachment(attachment);
        String realpath=request.getServletContext().getRealPath(attachment);
        System.out.println(realpath);
        file.transferTo(new File(realpath));
        Integer temp=mailService.addMail(mail);
       // System.out.println(mail.getFromId()+";"+mail.getToId()+":"+mail.getTitle()+";"+mail.getContent()+";"+mail.getAttachment());
        return "writemail";
    }


    /*收件箱*/
    @RequestMapping(value = "/mymails",method = RequestMethod.POST,produces="application/json;charset=UTF-8")
    @ResponseBody
    public Object mails(@RequestBody JSONObject jsonObject, HttpServletRequest request){
        //System.out.println("jsonObject:"+jsonObject);
        Object obj=request.getAttribute("sessionUser");
        User user=(User)obj;
        //User user= new User();
        //user.setId(2);
        jsonObject.put("uid",user.getId());
        Integer count=mailService.selectCountToMeMails(user);
        List<Mail> mails=mailService.selectAllToMine(jsonObject);
        jsonObject.put("total",count);
        jsonObject.put("rows",mails);
        return jsonObject;
    }
    /*查看邮件*/
    @RequestMapping(value = "/tomodifyisread/{id}",method = RequestMethod.PUT,produces="application/json;charset=UTF-8")

    public void modifyIsRead(@PathVariable("id") Integer id,HttpSession session){
        //System.out.println("id:"+id);
        mailService.toUpdateIsRead(id);

    }
    /*查看当前邮件的发件人*/
 /*   @ResponseBody
    @RequestMapping(value = "/currentuser/{fromId}",method = RequestMethod.GET,produces="application/json;charset=UTF-8")
    public String currentUser(@PathVariable("fromId") Integer fromId){
       System.out.println("fromId:"+fromId);
        User user=mailService.selectCurrentNickname(fromId);
        if(user!=null) {
            System.out.println(user.getNickname()+":"+user.getId());
            return user.getNickname();
        }else{
            System.out.println("获取发件人信息失败...");
            return Constants.FAIL;
        }
    }*/
    @ResponseBody
    @RequestMapping(value = "/currentuser",method = RequestMethod.POST,produces="application/json;charset=UTF-8")
    public String currentUser(@RequestBody JSONObject jsonObject){
        int fromId = jsonObject.getInteger("fromId");
        User user=mailService.selectCurrentNickname(fromId);
        if(user!=null) {
            //System.out.println(user.getNickname()+":"+user.getId());
            return user.getNickname();
        }else{
            //System.out.println("获取发件人信息失败...");
            return "获取发件人信息失败";
        }
    }
    /*下载附件*/
    @RequestMapping(value = "/download")
    public ResponseEntity<byte[]> download(String url,HttpServletRequest request) throws IOException {
        //一般从数据库表中读取相应文件位置，这里暂定为下载d:/1.jpg相应文件
        String location = request.getServletContext().getRealPath(url);
       //System.out.println("url:"+url);
        //1.设置响应头信息:filename属性用来设置下载后的文件名称
        HttpHeaders headers = new HttpHeaders();
        //Content-Disposition:显示附加项
        //attachment：表示以下载的方式
        //filename：表示下载后文件的名称
        headers.add("Content-Disposition", "attachement;filename=1.jpg");
        //2.设置响应状态码200
        HttpStatus statusCode = HttpStatus.OK;
        //3.创建输入流，读取相应文件
        FileInputStream is = new FileInputStream(location);
        byte[] bs = new byte[is.available()];
        //读入字节数组
        is.read(bs);
        //4.关闭流
        is.close();

        ResponseEntity<byte[]> entity = new ResponseEntity<byte[]>(bs,headers,statusCode);
        return entity;

    }
    /*删除邮件*/
    @RequestMapping(value = "/tomodifyisdelete/{id}",method = RequestMethod.PUT,produces="application/json;charset=UTF-8")
    @ResponseBody
    public String modifyIsDelete(@PathVariable("id") Integer id){
        //System.out.println("id:"+id);
        Integer integer=mailService.toUpdateIsDelete(id);
        //System.out.println("integer:"+integer);
        if(integer!=0){
            return Constants.SUCCESS;
        }
        return Constants.FAIL;
    }
    /*垃圾邮件箱*/
    @RequestMapping(value = "/spams",method = RequestMethod.POST,produces="application/json;charset=UTF-8")
    @ResponseBody
    public Object spams(@RequestBody JSONObject jsonObject, HttpServletRequest request){
        //System.out.println("jsonObject:"+jsonObject);
        Object obj=request.getAttribute("sessionUser");
        User user= new User();
        user.setId(2);
        jsonObject.put("uid",user.getId());
        Integer count=mailService.selectCountSpams(user);
        List<Mail> spams=mailService.selectAllSpams(jsonObject);
        jsonObject.put("total",count);
        jsonObject.put("rows",spams);
        return jsonObject;
    }
    /*还原*/
    @RequestMapping(value = "/toreturnmodifyisdelete/{id}",method = RequestMethod.PUT,produces="application/json;charset=UTF-8")
    @ResponseBody
    public String returnDelete(@PathVariable("id") Integer id){
        //System.out.println("id:"+id);
        Integer integer=mailService.reductionDelete(id);
        //System.out.println("integer:"+integer);
        if(integer!=0){
            return Constants.SUCCESS;
        }
        return Constants.FAIL;
    }
    /*彻底删除*/
    @RequestMapping(value = "/deletemail/{id}",method = RequestMethod.PUT,produces="application/json;charset=UTF-8")
    @ResponseBody
    public String doLastDelete(@PathVariable("id") Integer id){
        //System.out.println("id:"+id);
        Integer integer=mailService.deleteSpam(id);
        //System.out.println("integer:"+integer);
        if(integer!=0){
            return Constants.SUCCESS;
        }
        return Constants.FAIL;
    }







    //工具方法
    public String getUUID(MultipartFile file){
        String uuid = UUID.randomUUID().toString().replace("-", "");

        String[] strs = file.getOriginalFilename().split("\\.");

        String name=uuid+"."+strs[strs.length-1];

        return name;

    }
}
