package com.vo;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "users")

public class Users {

    private int userid;
    private String uname;
    private String upwd;
    private int ulimit;
    @Id
    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getUpwd() {
        return upwd;
    }

    public void setUpwd(String upwd) {
        this.upwd = upwd;
    }

    public int getUlimit() {
        return ulimit;
    }

    public void setUlimit(int ulimit) {
        this.ulimit = ulimit;
    }


}
