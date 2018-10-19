package com.tdh.wxl.service;

import com.alibaba.fastjson.JSONObject;
import com.tdh.wxl.model.Mail;
import com.tdh.login.model.User;

import java.util.List;

public interface MailService {
    List<User> selectAll(User user);
    List<Mail> selectAllToMine(JSONObject jsonObject);
    Integer addMail(Mail mail);
    Integer selectCountToMeMails(User user);
    void toUpdateIsRead(Integer id);
    Integer toUpdateIsDelete(Integer id);
    List<Mail> selectAllSpams(JSONObject jsonObject);
    Integer selectCountSpams(User user);
    Integer reductionDelete(Integer id);
    Integer deleteSpam(Integer id);
    User selectCurrentNickname(Integer fromId);
}
