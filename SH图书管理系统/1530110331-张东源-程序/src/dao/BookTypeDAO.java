package dao;

import java.util.List;
import pojo.BookType;

public interface BookTypeDAO {
	//查询全部
	public List<BookType> findAllBookType() throws Exception; 
	//根据uname查询当前类别信息
	public BookType queryOneBookType(int booktypeid) throws Exception;
	//修改
	public boolean updateBookType(BookType booktype) throws Exception;
	//删除
	public boolean deleteBookType(int booktypeid) throws Exception;
	//添加
	public boolean addBookType(BookType booktype) throws Exception;
}
