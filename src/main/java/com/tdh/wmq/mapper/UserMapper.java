package com.tdh.wmq.mapper;

import com.tdh.wmq.model.User;

public interface UserMapper {

    User selectUserById(int id);

    void updateUserInfo(User user);

}
