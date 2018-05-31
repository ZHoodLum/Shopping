package dao;

import java.util.List;

import pojo.BookInfo;

public interface BookInfoDAO {
	//查询全部
	public List<BookInfo> findAllBookInfo() throws Exception; 
	//修改
	//根据id查询修改用户
	public BookInfo queryOneBookInfo(int bookid) throws Exception;
	//修改用户
	public boolean updateBookInfo(BookInfo bookinfo) throws Exception;
	//删除
	public boolean deleteBookInfo(int bookid) throws Exception;
	//添加
	public boolean addBookInfo(BookInfo bookinfo) throws Exception;
}
