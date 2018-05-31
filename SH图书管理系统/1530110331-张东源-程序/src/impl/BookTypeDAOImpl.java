package impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import pojo.BookType;
import util.HibernateSessionFactory;
import dao.BookTypeDAO;

public class BookTypeDAOImpl  implements BookTypeDAO {
	private Session session = null;
	private Transaction tran = null;
	
	//构造方法，得到事务对象
	public BookTypeDAOImpl(){		
		session = HibernateSessionFactory.getSession();
		tran = session.beginTransaction();		
	}
	//查询
	@Override
	public List<BookType> findAllBookType() throws Exception {
		String sql = "from BookType";
		Query query = session.createQuery(sql);
		List<BookType> list = query.list();
		tran.commit();
		return list;
	}
	//根据id查询修改文件
	@Override
	public BookType queryOneBookType(int booktypeid) throws Exception {
		BookType booktype = (BookType) session.get(BookType.class, booktypeid);
		tran.commit();
		return booktype;
	}
	//修改
	@Override
	public boolean updateBookType(BookType booktype) throws Exception {
		try {
			String sql = "update BookType set booktypename = ? where booktypeid = ?";
			Query query = session.createQuery(sql);
			query.setString(0, booktype.getBooktypename());
			query.setInteger(1, booktype.getBooktypeid());		
			int i = query.executeUpdate();
			tran.commit();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return true;

	}
	//删除
	@Override
	public boolean deleteBookType(int booktypeid) throws Exception {
		BookType booktype = (BookType) session.get(BookType.class, booktypeid);
		session.delete(booktype);
		tran.commit();		
		return true;
	}
	//添加
	@Override
	public boolean addBookType(BookType booktype) throws Exception {
		booktype.setBooktypename(booktype.getBooktypename());
		booktype.setBooktypeid(booktype.getBooktypeid());
		session.save(booktype);
		tran.commit();
		return true;
	}
	
}
