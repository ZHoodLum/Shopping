package com.dhee.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.dhee.dao.IndexDao;
import com.dhee.dao.UserDao;
import com.dhee.vo.BooksVo;
import com.dhee.vo.UserVo;
import com.opensymphony.xwork2.ActionSupport;
/**
 * 
 * @author Administrator
 */
public class LoginAction extends ActionSupport implements RequestAware,SessionAware{
	private UserDao userDao;
	private UserVo userVo;
	private Map<String,Object> request;
	private Map<String ,Object> session;
	private IndexDao indexDao;
	private List<BooksVo> listBooks;

	public IndexDao getIndexDao() {
		return indexDao;
	}

	public void setIndexDao(IndexDao indexDao) {
		this.indexDao = indexDao;
	}

	public List<BooksVo> getListBooks() {
		return listBooks;
	}

	public void setListBooks(List<BooksVo> listBooks) {
		this.listBooks = listBooks;
	}
	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	
	public UserVo getUserVo() {
		return userVo;
	}

	public void setUserVo(UserVo userVo) {
		this.userVo = userVo;
	}
	public void setRequest(Map<String, Object> request) {
		this.request = request;
	}
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
	/**
	 * 
	 * @return
	 */
	public String login(){
		UserVo uv = userDao.login(userVo);
		if(uv == null){
			return "error";
		}
		session.put("userInfo", uv);
		listBooks = indexDao.selectAllBooks();
		return SUCCESS;
	}




}
