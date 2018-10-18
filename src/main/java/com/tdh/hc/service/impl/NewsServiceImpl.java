package com.tdh.hc.service.impl;

import com.alibaba.fastjson.JSONObject;
import com.tdh.hc.mapper.NewsMapper;
import com.tdh.hc.model.News;
import com.tdh.hc.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;
import java.util.UUID;


@Service
public class NewsServiceImpl implements NewsService {

    @Autowired
    private NewsMapper newsmapper;

    @Override
    public JSONObject findAllNews(JSONObject jsonobject) {

        List<News> list = newsmapper.selectAllNews(jsonobject);

        Integer count = newsmapper.selectNewsCount();

        JSONObject newsjson = new JSONObject();

        newsjson.put("rows",list);

        newsjson.put("total",count);

        return newsjson;
    }

    @Override
    public News findNews(String uuid) {

        News news = newsmapper.selectNews(uuid);

        return news;
    }

    @Override
    @Transactional(isolation = Isolation.READ_COMMITTED,propagation = Propagation.REQUIRED)
    public Integer saveNews(News news) {

        String uuid = UUID.randomUUID().toString();

        uuid=uuid.replace("-","");

        news.setUuid(uuid);

        news.setIsdelete(1);

        news.setPushtime(new Date());

        Integer count = newsmapper.insertNews(news);

        return count;
    }

    @Override
    @Transactional(isolation = Isolation.READ_COMMITTED,propagation = Propagation.REQUIRED)
    public Integer modifyNews(News news) {

        Integer count = newsmapper.updateNews(news);

        return count;
    }

    @Override
    @Transactional(isolation = Isolation.READ_COMMITTED,propagation = Propagation.REQUIRED)
    public Integer removeNews(String uuid) {

        Integer count = newsmapper.deleteNews(uuid);

        return count;
    }

    @Override
    public Boolean toCompar(News news){

        String newImglinks = news.getImglinks();

        News oldnews = newsmapper.selectNews(news.getUuid());

        String oldImglinks = oldnews.getImglinks();

        Boolean flg = newImglinks.equals(oldImglinks);

        return flg;
    };
}
