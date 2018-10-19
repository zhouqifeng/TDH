package com.tdh.wxl.service.impl;

import com.alibaba.fastjson.JSONObject;
import com.tdh.wxl.mapper.MailMapper;
import com.tdh.wxl.model.Mail;
import com.tdh.login.model.User;
import com.tdh.wxl.service.MailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class MailServiceImpl implements MailService {
    @Autowired
    MailMapper mapper;

    @Override
    public Integer selectCountToMeMails(User user) {
        return mapper.selectCountToMe(user);
    }

    @Override
    public List<User> selectAll(User user) {
        //System.out.println("service------------------");
        //user.setId(2);
        return mapper.selectAllReceiver(user);
    }

    @Override
    public Integer addMail(Mail mail) {
        //mail.setFromId(4);
        //获取邮件发送时间
        mail.setCreateTime(new Date());
        return mapper.insertMail(mail);
    }

    @Override
    public void toUpdateIsRead(Integer id) {
        mapper.updateIsRead(id);
    }

    @Override
    public Integer toUpdateIsDelete(Integer id) {
        return mapper.updateIsDelete(id);
    }

    @Override
    public List<Mail> selectAllSpams(JSONObject jsonObject) {
        return mapper.selectMyAllSpam(jsonObject);
    }

    @Override
    public Integer selectCountSpams(User user) {
        System.out.println("service:"+user.getId());
        return mapper.selectMyCountSpam(user);
    }

    @Override
    public Integer reductionDelete(Integer id) {
        System.out.println("serviceid:I"+id);
        return mapper.reductionMyDelete(id);
    }

    @Override
    public Integer deleteSpam(Integer id) {
        return mapper.deleteMySpam(id);
    }

    @Override
    public User selectCurrentNickname(Integer fromId) {
        return mapper.selectCurrentUser(fromId);
    }

    @Override
    public List<Mail> selectAllToMine(JSONObject jsonObject) {

        return mapper.selectAllToMe(jsonObject);
    }
}
