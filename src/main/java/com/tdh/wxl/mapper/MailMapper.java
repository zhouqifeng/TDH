package com.tdh.wxl.mapper;

import com.alibaba.fastjson.JSONObject;
import com.tdh.wxl.model.Mail;
import com.tdh.login.model.User;

import java.util.List;

public interface MailMapper {
    List<User> selectAllReceiver(User user);
    List<Mail> selectAllToMe(JSONObject jsonObject);
    Integer insertMail(Mail mail);
    Integer selectCountToMe(User user);
    void updateIsRead(Integer id);
    Integer updateIsDelete(Integer id);
    List<Mail> selectMyAllSpam(JSONObject jsonObject);
    Integer selectMyCountSpam(User user);
    Integer reductionMyDelete(Integer id);
    Integer deleteMySpam(Integer id);
    User selectCurrentUser(Integer fromId);
}
