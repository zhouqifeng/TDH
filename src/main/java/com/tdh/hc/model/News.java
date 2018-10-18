package com.tdh.hc.model;


import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;
public class News {
    private String uuid;//主键
    private String title;//标题
    private String content;//内容
    private String imglinks;//图片地址
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date pushtime;//发布时间
    private Integer uid;//发布者外键
    private Integer isdelete;//是否删除
    private User user;//对应用户
    public News() {

    }

    public String getUuid() {
        return uuid;
    }

    public void setUuid(String uuid) {
        this.uuid = uuid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getImglinks() {
        return imglinks;
    }

    public void setImglinks(String imglinks) {
        this.imglinks = imglinks;
    }

    public Date getPushtime() {
        return pushtime;
    }

    public void setPushtime(Date pushtime) {
        this.pushtime = pushtime;
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public Integer getIsdelete() {
        return isdelete;
    }

    public void setIsdelete(Integer isdelete) {
        this.isdelete = isdelete;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @Override
    public String toString() {
        return "News{" +
                "uuid='" + uuid + '\'' +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", imglinks='" + imglinks + '\'' +
                ", pushtime=" + pushtime +
                ", uid=" + uid +
                ", isdelete=" + isdelete +
                ", user=" + user +
                '}';
    }
}
