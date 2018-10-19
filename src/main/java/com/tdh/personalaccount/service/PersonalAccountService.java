package com.tdh.personalaccount.service;

import com.tdh.login.model.User;

public interface PersonalAccountService {

    User findUserByUsername(User user) throws Exception;

    int modifyUserById(User user) throws Exception;

    User findUserById(User user) throws Exception;

}
