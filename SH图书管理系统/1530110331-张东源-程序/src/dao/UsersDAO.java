package dao;

import java.util.List;

import pojo.BookInfo;
import pojo.Users;

/**
 * 
 * @author duke
 * @date 2017/11/10
 * @main ��ܽ��Ӧ��  �ӿ��� ��¼�Ͳ�ѯȫ������
 * 
 * @date 2017/11/4
 * @main �������ܽӿ�
 *
 */

public interface UsersDAO {
	//��¼
	public boolean loginUsers(Users users) throws Exception; 
	
}
