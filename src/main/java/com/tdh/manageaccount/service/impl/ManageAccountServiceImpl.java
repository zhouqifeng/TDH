package com.tdh.manageaccount.service.impl;

import com.alibaba.fastjson.JSONObject;
import com.tdh.login.model.User;
import com.tdh.manageaccount.mapper.ManageAccountMapper;
import com.tdh.manageaccount.service.ManageAccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.UUID;

@Service
@Transactional(isolation = Isolation.READ_COMMITTED, propagation = Propagation.REQUIRED)
public class ManageAccountServiceImpl implements ManageAccountService {

    @Autowired
    ManageAccountMapper mapper;

    @Override
    public JSONObject findUsersWithLimit(JSONObject jsonObject) throws Exception {
        JSONObject jo = new JSONObject();
        jo.put("total",mapper.selectUserCount());
        jo.put("rows",mapper.selectUsersWithLimit(jsonObject));
        return jo;
    }

    @Override
    public int saveUser(User user) throws Exception {
        user.setUuid(UUID.randomUUID().toString());
        int i = mapper.insertUser(user);
        return i;
    }

    @Override
    public int modifyUserDidById(User user) throws Exception {
        int i = mapper.updateUserDidById(user);
        return i;
    }

    @Override
    public User findUserById(User user) throws Exception {
        User finduser = mapper.selectUserById(user);
        return finduser;
    }

    @Override
    public int removeUserById(User user) throws Exception {
        int i = mapper.deleteUserById(user);
        return i;
    }

}
