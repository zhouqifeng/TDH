package com.tdh.login.service;

import com.tdh.login.model.User;

public interface LoginService {

    User findUserByUsernameAndPassword(User user) throws Exception;

}
