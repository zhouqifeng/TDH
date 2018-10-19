package com.tdh.personalaccount.mapper;

import com.tdh.login.model.User;

public interface PersonalAccountMapper {

    User selectUserByUsername(User user) throws Exception;

    int updateUserById(User user) throws Exception;

    User selectUserById(User user) throws Exception;

}
