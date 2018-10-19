package com.tdh.zqf.service;

import com.tdh.zqf.model.Leave;
import com.tdh.login.model.User;
import com.tdh.zqf.model.Vacation;

import java.util.List;

public interface IVacationService {

    public List<Vacation> findAll(int approveid) throws Exception;

    public List<Vacation> findByapplyId(int applyid) throws Exception;

    public Vacation findById(int applyid) throws Exception;

    public List<User> findAdmin() throws Exception;

    public void saveVacation(Leave leave) throws Exception;

    public void modifyById(Integer id, Integer state) throws Exception;

}
