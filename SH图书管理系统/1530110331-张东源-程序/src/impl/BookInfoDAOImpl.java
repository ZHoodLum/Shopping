package impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import pojo.BookInfo;
import util.HibernateSessionFactory;
import dao.BookInfoDAO;

public class BookInfoDAOImpl implements BookInfoDAO {
	private Session session = null;
	private Transaction tran = null;
	
	//构造方法，得到事务对象
	public BookInfoDAOImpl(){		
		session = HibernateSessionFactory.getSession();
		tran = session.beginTransaction();		
	}
	//查询
	@Override
	public List<BookInfo> findAllBookInfo() throws Exception {
		String sql = "from BookInfo";
		Query query = session.createQuery(sql);
		List<BookInfo> list = query.list();
		tran.commit();
		return list;
	}
	//删除
	@Override
	public boolean deleteBookInfo(int bookid) throws Exception {
		BookInfo bookinfo = (BookInfo)session.get(BookInfo.class, bookid);
		session.delete(bookinfo);
		tran.commit();		
		return true;
	}
	//根据id查询当前修改用户的信息
	@Override
	public BookInfo queryOneBookInfo(int bookid) throws Exception {
		BookInfo bookinfo = (BookInfo)session.get(BookInfo.class, bookid);
		tran.commit();
		return bookinfo;
	}
	//对要修改的用户进行修改
	@Override
	public boolean updateBookInfo(BookInfo bookinfo) throws Exception {
		
		String sql = "update BookInfo set bookname = ?,author=?,pubname=?,booktypename=?,isbn=?,price=? where bookid = ?";
		Query query = session.createQuery(sql);
		query.setString(0, bookinfo.getBookname());
		query.setString(1, bookinfo.getAuthor());	
		query.setString(2, bookinfo.getPubname());	
		
		query.setString(3, bookinfo.getBooktypename());	
		
		query.setString(4, bookinfo.getIsbn());	
		query.setDouble(5, bookinfo.getPrice());	
		query.setInteger(6, bookinfo.getBookid());	
		
		int i = query.executeUpdate();
		tran.commit();
	
		return true;
	}
	//添加
	@Override
	public boolean addBookInfo(BookInfo bookinfo) throws Exception {
		bookinfo.setBookname(bookinfo.getBookname());
		
		bookinfo.setBookid(bookinfo.getBookid());
		bookinfo.setAuthor(bookinfo.getAuthor());
		
		bookinfo.setBooktypename(bookinfo.getBooktypename());
		bookinfo.setIsbn(bookinfo.getIsbn());
		bookinfo.setPrice(bookinfo.getPrice());
		bookinfo.setPubname(bookinfo.getPubname());
		session.save(bookinfo);
		tran.commit();
		return true;  	}
	
	

}
