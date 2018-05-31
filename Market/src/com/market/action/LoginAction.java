package com.market.action;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.market.dao.UsersDao;
import com.market.vo.UsersVo;
import com.opensymphony.xwork2.ActionSupport;
	/**
	 * 
	 * @author Administrator
	 *
	 */
public class LoginAction extends ActionSupport  implements SessionAware{

	private UsersVo userVo;
	private UsersDao usersDao;
	private Map<String,Object> session;
	
	public UsersVo getUserVo() {
			return userVo;
		}
		public void setUserVo(UsersVo userVo) {
			this.userVo = userVo;
		}
	
	public UsersDao getUsersDao() {
		return usersDao;
	}
	public void setUsersDao(UsersDao usersDao) {
		this.usersDao = usersDao;
	}
	
	public String login() {
		UsersVo uv=usersDao.login(userVo);
		if(uv==null){
			return INPUT;
		}
		return SUCCESS;
	}
	public void setSession(Map<String, Object> session) {
		this.session=session;
		
	}
	public String registe(){
		usersDao.registe(userVo);
		return SUCCESS;
	}

}
