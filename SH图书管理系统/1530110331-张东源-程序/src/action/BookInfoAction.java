package action;

import impl.BookInfoDAOImpl;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import pojo.BookInfo;
import dao.BookInfoDAO;

public class BookInfoAction extends ActionSupport{
	private BookInfo b;
		
	public BookInfo getB() {
		return b;
	}

	public void setB(BookInfo b) {
		this.b = b;
	}

	//��ѯ
	public String findAllBookInfo() throws Exception{
		
		BookInfoDAO dao = new BookInfoDAOImpl();

	    List<BookInfo> list =	dao.findAllBookInfo();
	    if(list.size() > 0){
	    	HttpServletRequest request =  ServletActionContext.getRequest();
	    	HttpSession session = request.getSession();
	    	session.setAttribute("bookinfo", list);
	    }
	    return SUCCESS;
	}
	//ɾ��
	public String deleteBookInfo() throws Exception{
		BookInfoDAO dao = new BookInfoDAOImpl();
		HttpServletRequest request =  ServletActionContext.getRequest();
		int bookid = Integer.parseInt(request.getParameter("bookid"));
		if(dao.deleteBookInfo(bookid));
	
		return SUCCESS;
	}
	//����id��ѯ�޸ĵ��û���
	public String queryOneBookInfo() throws Exception{

		BookInfoDAO dao = new BookInfoDAOImpl();
		HttpServletRequest request =  ServletActionContext.getRequest();
		
		int bookid = Integer.parseInt(request.getParameter("bookid"));
		BookInfo bookinfo = dao.queryOneBookInfo(bookid);
		HttpSession session = request.getSession();
		
		session.setAttribute("bookid",bookinfo.getBookid());
		session.setAttribute("bookname",bookinfo.getBookname());
		session.setAttribute("author", bookinfo.getAuthor());
		session.setAttribute("pubname", bookinfo.getPubname());
		session.setAttribute("booktypename", bookinfo.getBooktypename());
		session.setAttribute("isbn", bookinfo.getIsbn());
		session.setAttribute("price", bookinfo.getPrice());		
		return SUCCESS;	
	}
	
	//�޸��û�
	public String updateBookInfo() throws Exception{
		BookInfoDAO dao = new BookInfoDAOImpl();
	    dao.updateBookInfo(b);
		return SUCCESS;
	}
	
	//���
	public String addBookInfo() throws Exception{
		BookInfoDAO dao = new BookInfoDAOImpl();
		dao.addBookInfo(b);
		return SUCCESS;
	}
}
