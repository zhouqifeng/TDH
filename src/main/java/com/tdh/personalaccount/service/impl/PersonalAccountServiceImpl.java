package com.tdh.personalaccount.service.impl;

import com.tdh.login.model.User;
import com.tdh.personalaccount.mapper.PersonalAccountMapper;
import com.tdh.personalaccount.service.PersonalAccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional(isolation = Isolation.READ_COMMITTED, propagation = Propagation.REQUIRED)
public class PersonalAccountServiceImpl implements PersonalAccountService {

    @Autowired
    PersonalAccountMapper mapper;

    @Override
    @Transactional(readOnly = true)
    public User findUserByUsername(User user) throws Exception {
        User finduser = mapper.selectUserByUsername(user);
        return finduser;
    }

    @Override
    public int modifyUserById(User user) throws Exception {
        int i = mapper.updateUserById(user);
        return i;
    }

    @Override
    @Transactional(readOnly = true)
    public User findUserById(User user) throws Exception {
        User finduser = mapper.selectUserById(user);
        return finduser;
    }

}
