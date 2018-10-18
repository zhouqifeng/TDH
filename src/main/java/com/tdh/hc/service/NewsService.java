package com.tdh.hc.service;

import com.alibaba.fastjson.JSONObject;
import com.tdh.hc.model.News;

import java.util.List;

public interface NewsService {

    JSONObject findAllNews(JSONObject jsonobject);

    News findNews(String uuid);

    Integer saveNews(News news);

    Integer modifyNews(News news);

    Integer removeNews(String uuid);

    Boolean toCompar(News news);
}
