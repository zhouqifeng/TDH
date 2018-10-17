package com.tdh.wtm.mapper;

import com.tdh.wtm.model.Sign;

public interface SignMapper {

    //插入数据
    public Integer insert(Sign sign)throws Exception;
    //查数量
    public Integer selectById(Sign sign)throws Exception;

    //查今天是否签到过
    public Integer selectByIdFalse(Sign sign)throws Exception;

}
