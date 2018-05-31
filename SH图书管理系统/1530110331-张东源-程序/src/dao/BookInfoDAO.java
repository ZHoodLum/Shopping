package dao;

import java.util.List;

import pojo.BookInfo;

public interface BookInfoDAO {
	//��ѯȫ��
	public List<BookInfo> findAllBookInfo() throws Exception; 
	//�޸�
	//����id��ѯ�޸��û�
	public BookInfo queryOneBookInfo(int bookid) throws Exception;
	//�޸��û�
	public boolean updateBookInfo(BookInfo bookinfo) throws Exception;
	//ɾ��
	public boolean deleteBookInfo(int bookid) throws Exception;
	//���
	public boolean addBookInfo(BookInfo bookinfo) throws Exception;
}
