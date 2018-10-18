package com.tdh.hc.mapper;

import com.alibaba.fastjson.JSONObject;
import com.tdh.hc.model.News;

import java.util.List;

public interface NewsMapper {
    //查询所有公告
    List<News> selectAllNews(JSONObject jsonobject);

    //查询单条公告
    News selectNews(String uuid);

    //
    Integer selectNewsCount();
    //添加公告
    Integer insertNews(News news);

    //修改公告
    Integer updateNews(News news);

    //删除公告
    Integer deleteNews(String uuid);
}
