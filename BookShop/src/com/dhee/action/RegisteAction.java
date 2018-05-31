package com.dhee.action;

import java.io.UnsupportedEncodingException;

import com.dhee.dao.UserDao;
import com.dhee.vo.UserVo;
import com.opensymphony.xwork2.ActionSupport;

public class RegisteAction extends ActionSupport {

	private UserDao userDao;
	private UserVo userVo;

	public UserVo getUserVo() {
		return userVo;
	}

	public void setUserVo(UserVo userVo) {
		this.userVo = userVo;
	}

	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	public String registe() throws UnsupportedEncodingException {
		userDao.registe(userVo);
		return SUCCESS;
	}

}
