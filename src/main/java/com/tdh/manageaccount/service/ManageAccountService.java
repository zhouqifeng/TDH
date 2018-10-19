package com.tdh.manageaccount.service;

import com.alibaba.fastjson.JSONObject;
import com.tdh.login.model.User;

import java.util.List;

public interface ManageAccountService {

    JSONObject findUsersWithLimit(JSONObject jsonObject) throws Exception;

    int saveUser(User user) throws Exception;

    int modifyUserDidById(User user) throws Exception;

    User findUserById(User user) throws Exception;

    int removeUserById(User user) throws Exception;

}
