package impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import pojo.Reader;
import util.HibernateSessionFactory;
import dao.ReaderDAO;

public class ReaderDAOImpl  implements ReaderDAO {
	private Session session = null;
	private Transaction tran = null;
	
	//���췽�����õ��������
	public ReaderDAOImpl(){		
		session = HibernateSessionFactory.getSession();
		tran = session.beginTransaction();		
	}
	//��ѯ
	@Override
	public List<Reader> findAllReader() throws Exception {
		String sql = "from Reader";
		Query query = session.createQuery(sql);
		List<Reader> list = query.list();
		tran.commit();
		return list;
	}
	//��ѯ��ǰ������Ϣ
	@Override
	public Reader queryOneReader(int rid) throws Exception {
		Reader reader = (Reader) session.get(Reader.class, rid);
		tran.commit();
		return reader;
	}
	//�޸�
	@Override
	public boolean updateReader(Reader reader) throws Exception {
		String sql = "update Reader set rname = ?,ridcard=? where rid = ?";
		Query query = session.createQuery(sql);
		query.setString(0, reader.getRname());
		query.setString(1,reader.getRidcard());		
		query.setInteger(2, reader.getRid());
		int i = query.executeUpdate();
		tran.commit();
		return true;
	}
	//ɾ��
	@Override
	public boolean deleteReader(int rid) throws Exception {
		Reader reader = (Reader) session.get(Reader.class, rid);
		session.delete(reader);
		tran.commit();		
		return true;
	}	
	//���
	@Override
	public boolean addReader(Reader reader) throws Exception {
		reader.setRname(reader.getRname());
		reader.setRidcard(reader.getRidcard());
		reader.setRid(reader.getRid());
		session.save(reader);
		tran.commit();
		return true;
	}
	
	
}
