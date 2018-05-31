package action;

/**
 * @author duke
 * @date 2017/11/10
 * @main 框架结合应用  action
 * 
 */

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import impl.UsersDAOImpl;
import pojo.BookInfo;
import pojo.Users;

import com.opensymphony.xwork2.ActionSupport;

import dao.UsersDAO;

public class UsersAction extends ActionSupport {

	//二次封装字段
	private Users u;

	public Users getU() {
		return u;
	}

	public void setU(Users u) {
		this.u = u;
	}
	
	//登录
	public String login() throws Exception {


		//调用实现类UsersDAOImpl的方法
		UsersDAO dao = new UsersDAOImpl();
		if(dao.loginUsers(u)){
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession hsession = request.getSession();
		
		hsession.setAttribute("limit", u.getLimit());
		hsession.setAttribute("uname", u.getUname());
			return SUCCESS;		
		}else{	
			return INPUT;	
		}
	}
		
	
}
