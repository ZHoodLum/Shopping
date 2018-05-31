package com.action;

import com.dao.UsersDao;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.vo.Users;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import java.io.UnsupportedEncodingException;
import java.util.Map;


public class UsersAction extends ActionSupport implements RequestAware,SessionAware{

    private UsersDao usersDao;
    private Users users;
    //private Map<String,Object> request;
    private Map<String ,Object> session;


    public UsersDao getUsersDao() {
        return usersDao;
    }

    public void setUsersDao(UsersDao usersDao) {
        this.usersDao = usersDao;
    }

    public Users getUsers() {
        return users;
    }

    public void setUsers(Users users) {
        this.users = users;
    }

    public void setRequest(Map<String, Object> map) {

    }

    public void setSession(Map<String, Object> session) {
            this.session=session;
    }


    public String login(){
        Users uv = usersDao.login(users);
        if(uv == null){
            return INPUT;
        }
        session.put("listUser",uv);
        return SUCCESS;
    }

    public String register() throws UnsupportedEncodingException {
       usersDao.registe(users);
        return SUCCESS;
    }
/*
public class UsersAction extends ActionSupport{

}
    private Users users = new Users();
    private UsersService usersService;

    public UsersService getUsersService() {
        return usersService;
    }

    public void setUsersService(UsersService usersService) {
        this.usersService = usersService;
    }
    public String login() throws Exception {
        HttpServletRequest request = ServletActionContext.getRequest();
        HttpSession hsession = request.getSession();

        if (usersService.login(users)) {
            hsession.setAttribute("uname", users.getUname());
            hsession.setAttribute("ulimit", users.getUlimit());
            return SUCCESS;
        } else {
            return INPUT;
        }
    }
    }
    */
}
