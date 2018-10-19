package com.tdh.manageaccount.mapper;

import com.alibaba.fastjson.JSONObject;
import com.tdh.login.model.User;

import java.util.List;

public interface ManageAccountMapper {

    int selectUserCount() throws Exception;

    List<JSONObject> selectUsersWithLimit(JSONObject object) throws Exception;

    int insertUser(User user) throws Exception;

    int updateUserDidById(User user) throws Exception;

    User selectUserById(User user) throws Exception;

    int deleteUserById(User user) throws Exception;

}
