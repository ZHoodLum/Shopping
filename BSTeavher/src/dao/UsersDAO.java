package dao;

import vo.Users;

public interface UsersDAO {

	// ��¼
	public boolean findLogin(Users users) throws Exception;
	//ע��
	public boolean doCreate(Users users) throws Exception;
}
