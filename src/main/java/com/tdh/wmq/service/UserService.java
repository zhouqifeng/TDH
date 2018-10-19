package com.tdh.wmq.service;

import com.tdh.login.model.User;

public interface UserService {

    User findUserById(int id);

    void modifyUserInfo(User user);
}
