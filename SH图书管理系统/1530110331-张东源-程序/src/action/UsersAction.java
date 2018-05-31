package action;

/**
 * @author duke
 * @date 2017/11/10
 * @main ��ܽ��Ӧ��  action
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

	//���η�װ�ֶ�
	private Users u;

	public Users getU() {
		return u;
	}

	public void setU(Users u) {
		this.u = u;
	}
	
	//��¼
	public String login() throws Exception {


		//����ʵ����UsersDAOImpl�ķ���
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
