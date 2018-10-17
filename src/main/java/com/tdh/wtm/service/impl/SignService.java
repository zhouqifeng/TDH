package com.tdh.wtm.service.impl;

import com.tdh.wtm.mapper.SignMapper;
import com.tdh.wtm.model.Sign;
import com.tdh.wtm.service.SignServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional(isolation= Isolation.READ_COMMITTED,propagation= Propagation.REQUIRED)
public class SignService implements SignServiceImpl {
    @Autowired
    SignMapper mapper;

    @Override
    public Integer save(Sign sign) throws Exception {
            return mapper.insert(sign);
    }

    @Override
    public Integer findById(Sign sign) throws Exception {
        return mapper.selectById(sign);
    }
    @Override
    public Integer findByIdFalse(Sign sign) throws Exception {
        return mapper.selectByIdFalse(sign);
    }

}
