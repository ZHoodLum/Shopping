package dao;

import vo.Users;

public interface UsersDAO {

	// µÇÂ¼
	public boolean findLogin(Users users) throws Exception;
	//×¢²á
	public boolean doCreate(Users users) throws Exception;
}
