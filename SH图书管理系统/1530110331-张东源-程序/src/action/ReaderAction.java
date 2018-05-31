package action;
import impl.ReaderDAOImpl;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import pojo.Reader;

import com.opensymphony.xwork2.ActionSupport;

import dao.ReaderDAO;

public class ReaderAction extends ActionSupport{
	//二次封装
	private Reader r;	
	public Reader getR() {
		return r;
	}
	public void setR(Reader r) {
		this.r = r;
	}


	//查询
	public String findAllReader() throws Exception{
		
		ReaderDAO dao = new ReaderDAOImpl();

	    List<Reader> list =	dao.findAllReader();
	    if(list.size() > 0){
	    	HttpServletRequest request =  ServletActionContext.getRequest();
	    	HttpSession session = request.getSession();
	    	session.setAttribute("reader", list);
	    }
	    return SUCCESS;
	}
	
	//查询要修改的信息
	public String queryOneReader() throws Exception{

		ReaderDAO dao = new ReaderDAOImpl();
		HttpServletRequest request =  ServletActionContext.getRequest();
		try {
			int rid = Integer.parseInt(request.getParameter("rid"));
			Reader reader = dao.queryOneReader(rid);
			HttpSession session = request.getSession();
			
			session.setAttribute("rid",reader.getRid());
			session.setAttribute("rname",reader.getRname());
			session.setAttribute("ridcard", reader.getRidcard());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return SUCCESS;
		
	}
	//修改
	public String updateReader() throws Exception{
		ReaderDAO dao = new ReaderDAOImpl();
		   dao.updateReader(r);
		return SUCCESS;
	}
	
	//删除
	public String deleteReader() throws Exception{
		
		try {
			ReaderDAO dao = new ReaderDAOImpl();
			HttpServletRequest request =  ServletActionContext.getRequest();
			
			int rid = Integer.parseInt(request.getParameter("rid"));
			if(dao.deleteReader(rid));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		return SUCCESS;
	}
	
	//添加
	public String addReader() throws Exception{
		ReaderDAO dao = new ReaderDAOImpl();
		dao.addReader(r);
		return SUCCESS;
	}
		
}
