package com.tdh.wtm.service;

import com.tdh.wtm.model.Sign;

public interface SignServiceImpl {

    //插入数据
    public Integer save(Sign sign)throws Exception;
    //查数量
    public Integer findById(Sign sign)throws Exception;

    //查今天是否签到过
    public Integer findByIdFalse(Sign sign)throws Exception;
}
