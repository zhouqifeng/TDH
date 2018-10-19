package com.tdh.hc.controller;

import com.alibaba.fastjson.JSONObject;
import com.tdh.hc.model.News;
import com.tdh.login.model.User;
import com.tdh.hc.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.util.List;
import java.util.UUID;

@Controller
public class NewsController {

    @Autowired
    NewsService newservice;

    @RequestMapping(value="/newslist",method=RequestMethod.POST,produces = "application/json;charset=UTF-8")
    @ResponseBody
    public Object getlistnews(@RequestBody JSONObject jsonobject) throws Exception{

        JSONObject list = newservice.findAllNews(jsonobject);

        return list;
    }

    @RequestMapping(value="/savenews",method=RequestMethod.POST)
    @ResponseBody
    public Object saveNews(News news,MultipartFile file,HttpServletRequest request) throws Exception{

        String str = UUID.randomUUID().toString().replace("-","");

        String filename = str+".jpg";

        news.setImglinks(filename);

        String path = request.getServletContext().getRealPath("/upload/"+filename);

        file.transferTo(new File(path));

        Object obj = request.getSession().getAttribute("sessionUser");

        User user = (User)obj;

        news.setUid(user.getId());

        Integer count = newservice.saveNews(news);

        return count;
    }

    @RequestMapping(value = "/delete/{id}",method = RequestMethod.DELETE)
    @ResponseBody
    public Object deleteNews(@PathVariable String id){

        System.out.println("-------------------");
        System.out.println(id);
        System.out.println("-------------------");

        Integer count = newservice.removeNews(id);

        return count;
    }

    @RequestMapping(value="/editnews",method=RequestMethod.POST)
    @ResponseBody
    public Object editNews(News news,MultipartFile editfile,HttpServletRequest request) throws Exception{

        if(editfile!=null){

            String str = UUID.randomUUID().toString().replace("-","");

            String filename = str+".jpg";

            news.setImglinks(filename);

            String path = request.getServletContext().getRealPath("/upload/"+filename);

            editfile.transferTo(new File(path));
        }
        System.out.println("MultipartFile:--------------"+editfile+"---------------");

        System.out.println("--------------"+news+"---------------");

        Integer count = newservice.modifyNews(news);

        return count;
    }
}
