package dao;

import java.util.List;

import pojo.BookInfo;
import pojo.Users;

/**
 * 
 * @author duke
 * @date 2017/11/10
 * @main 框架结合应用  接口类 登录和查询全部功能
 * 
 * @date 2017/11/4
 * @main 后续功能接口
 *
 */

public interface UsersDAO {
	//登录
	public boolean loginUsers(Users users) throws Exception; 
	
}
