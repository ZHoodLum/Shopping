package action;
import impl.BookTypeDAOImpl;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import pojo.BookType;

import com.opensymphony.xwork2.ActionSupport;

import dao.BookTypeDAO;

public class BookTypeAction extends ActionSupport{
	
	private BookType b;

	public BookType getB() {
		return b;
	}

	public void setB(BookType b) {
		this.b = b;
	}
	
	//查询
	public String findAllBookType() throws Exception{
		HttpServletRequest request =  ServletActionContext.getRequest();
    	HttpSession session = request.getSession();
		BookTypeDAO dao = new BookTypeDAOImpl();
		
	    List<BookType> list =	dao.findAllBookType();
	    
	    List<String > booktypeinfo = new ArrayList<String>();
	    
	    for(BookType s:list){
	    	booktypeinfo.add(s.getBooktypename());
	    }
	    session.setAttribute("booktypeinfo", booktypeinfo);
	    
	    if(list.size() > 0){
	    	
	    	session.setAttribute("booktype", list);
	    }
	    
	    return SUCCESS;
	}
	//查询要修改的信息
	public String queryOneBookType() throws Exception{

		BookTypeDAO dao = new BookTypeDAOImpl();
		HttpServletRequest request =  ServletActionContext.getRequest();
		try {
			int booktypeid = Integer.parseInt(request.getParameter("booktypeid"));
			BookType booktype = dao.queryOneBookType(booktypeid);
			HttpSession session = request.getSession();
			
			session.setAttribute("booktypeid",booktype.getBooktypeid());
			session.setAttribute("booktypename",booktype.getBooktypename());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return SUCCESS;
		
	}
	//修改
	public String updateBookType() throws Exception{
		BookTypeDAO dao = new BookTypeDAOImpl();
	    dao.updateBookType(b);
		return SUCCESS;
	}
	//删除
	public String deleteBookType() throws Exception{
		
		BookTypeDAO dao = new BookTypeDAOImpl();
		HttpServletRequest request =  ServletActionContext.getRequest();
		int booktypeid = Integer.parseInt(request.getParameter("booktypeid"));
		if(dao.deleteBookType(booktypeid));
	
		return SUCCESS;
	}
	//添加
	public String addBookType() throws Exception{
		BookTypeDAO dao = new BookTypeDAOImpl();
		dao.addBookType(b);
		return SUCCESS;
	}
		
}
