package dao;

import java.util.List;

import pojo.BookType;
import pojo.Reader;

public interface ReaderDAO {
	//��ѯȫ��
	public List<Reader> findAllReader() throws Exception; 
	//���ݲ�ѯ��ǰ������Ϣ
	public Reader queryOneReader(int rid) throws Exception;
	//�޸�
	public boolean updateReader(Reader reader) throws Exception;
	//ɾ��
	public boolean deleteReader(int rid) throws Exception;
	//���
	public boolean addReader(Reader reader) throws Exception;
}
