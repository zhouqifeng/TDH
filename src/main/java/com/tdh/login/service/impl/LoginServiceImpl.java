package com.tdh.login.service.impl;

import com.tdh.login.mapper.LoginMapper;
import com.tdh.login.model.User;
import com.tdh.login.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional(isolation = Isolation.READ_COMMITTED, propagation = Propagation.REQUIRED)
public class LoginServiceImpl implements LoginService {

    @Autowired
    LoginMapper mapper;

    @Override
    @Transactional(readOnly = true)
    public User findUserByUsernameAndPassword(User user) throws Exception {
        User finduser = mapper.selectUserByUsernameAndPassword(user);
        return finduser;
    }
}
