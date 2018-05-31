package impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import pojo.BookInfo;
import pojo.Users;
import util.HibernateSessionFactory;
import dao.UsersDAO;

/**
 * 
 * @author duke
 * @date 2017/11/10
 * @main 框架结合应用 接口实现类 登录和查询功能
 * 
 * @date 2017/11/14
 * @main 后续功能接口实现
 *
 */

public class UsersDAOImpl implements UsersDAO {

	private Session session = null;
	private Transaction tran = null;
	
	//构造方法，得到事务对象
	public UsersDAOImpl(){
		
		session = HibernateSessionFactory.getSession();
		tran = session.beginTransaction();
		
	}
	
	//登录
	public boolean loginUsers(Users users) throws Exception {
		
		String sql = "select limit,uname from Users where userid = ? and upwd = ?";
		
		Query query = session.createQuery(sql);
		query.setInteger(0, users.getUserid());
		query.setString(1, users.getUpwd());
		
		List<Users> list = query.list();
		Object[] obj=(Object[])query.uniqueResult();
			
		int limit=(Integer)obj[0];
		String uname=(String)obj[1];
		users.setLimit(limit);
		users.setUname(uname);
		
		
		tran.commit();
		if(list.size() > 0){
			return true;
		}else{	
			return false;
		}
		}
		
		
	}
	

	


