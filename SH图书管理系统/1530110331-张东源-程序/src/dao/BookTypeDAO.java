package dao;

import java.util.List;
import pojo.BookType;

public interface BookTypeDAO {
	//��ѯȫ��
	public List<BookType> findAllBookType() throws Exception; 
	//����uname��ѯ��ǰ�����Ϣ
	public BookType queryOneBookType(int booktypeid) throws Exception;
	//�޸�
	public boolean updateBookType(BookType booktype) throws Exception;
	//ɾ��
	public boolean deleteBookType(int booktypeid) throws Exception;
	//���
	public boolean addBookType(BookType booktype) throws Exception;
}
