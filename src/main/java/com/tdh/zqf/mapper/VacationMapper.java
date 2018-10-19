package com.tdh.zqf.mapper;

import com.tdh.zqf.model.Leave;
import com.tdh.login.model.User;
import com.tdh.zqf.model.Vacation;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface VacationMapper {

    public List<Vacation> selectAll(@Param(value="approveId")int approveId) throws Exception;

    public List<Vacation> selectByapplyId(@Param(value="applyId")int applyId) throws Exception;

    public Vacation selectById(@Param(value="Id")int Id) throws Exception;

    public List<User> selectAdmin() throws Exception;

    public void insertVacation(Leave leave) throws Exception;

    public void updateById(@Param(value="Id")Integer Id,@Param(value="state")Integer state) throws Exception;

}
