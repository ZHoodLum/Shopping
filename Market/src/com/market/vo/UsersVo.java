package com.market.vo;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="users")
public class UsersVo {
	private int uid;
	private String uname;
	private String upwd;
	private String ulimit;
	
	@Id
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
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
	public String getUlimit() {
		return ulimit;
	}
	public void setUlimit(String ulimit) {
		this.ulimit = ulimit;
	}

}
	