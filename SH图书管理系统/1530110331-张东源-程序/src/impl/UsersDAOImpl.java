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
 * @main ��ܽ��Ӧ�� �ӿ�ʵ���� ��¼�Ͳ�ѯ����
 * 
 * @date 2017/11/14
 * @main �������ܽӿ�ʵ��
 *
 */

public class UsersDAOImpl implements UsersDAO {

	private Session session = null;
	private Transaction tran = null;
	
	//���췽�����õ��������
	public UsersDAOImpl(){
		
		session = HibernateSessionFactory.getSession();
		tran = session.beginTransaction();
		
	}
	
	//��¼
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
	

	


