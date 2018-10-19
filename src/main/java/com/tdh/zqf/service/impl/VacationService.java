package com.tdh.zqf.service.impl;

import com.tdh.zqf.mapper.VacationMapper;
import com.tdh.zqf.model.Leave;
import com.tdh.login.model.User;
import com.tdh.zqf.model.Vacation;
import com.tdh.zqf.service.IVacationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class VacationService implements IVacationService {

    @Autowired
    private VacationMapper mapper;

    @Override
    public List<Vacation> findAll(int approve) throws Exception {

        return mapper.selectAll(approve);
    }

    @Override
    public List<Vacation> findByapplyId(int applyid) throws Exception {

        return mapper.selectByapplyId(applyid);
    }

    @Override
    public Vacation findById(int Id) throws Exception {

        return mapper.selectById(Id);
    }

    @Override
    public List<User> findAdmin() throws Exception {

        return mapper.selectAdmin();
    }

    @Override
    public void saveVacation(Leave leave) throws Exception {

        mapper.insertVacation(leave);
    }

    @Override
    public void modifyById(Integer id, Integer state) throws Exception {

        mapper.updateById(id, state);
    }

}
