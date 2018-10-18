package com.tdh.wmq.service.impl;

import com.tdh.wmq.mapper.UserMapper;
import com.tdh.wmq.model.User;
import com.tdh.wmq.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserMapper usermapper;

    @Override
    public User findUserById(int id) {
        return usermapper.selectUserById(id);
    }

    @Override
    @Transactional
    public void modifyUserInfo(User user) {
        usermapper.updateUserInfo(user);
    }
}
