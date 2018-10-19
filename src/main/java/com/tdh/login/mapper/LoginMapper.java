package com.tdh.login.mapper;

import com.tdh.login.model.User;

public interface LoginMapper {

    User selectUserByUsernameAndPassword(User user) throws Exception;

}
