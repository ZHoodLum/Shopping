package dao;

import java.util.List;

import pojo.BookType;
import pojo.Reader;

public interface ReaderDAO {
	//查询全部
	public List<Reader> findAllReader() throws Exception; 
	//根据查询当前读者信息
	public Reader queryOneReader(int rid) throws Exception;
	//修改
	public boolean updateReader(Reader reader) throws Exception;
	//删除
	public boolean deleteReader(int rid) throws Exception;
	//添加
	public boolean addReader(Reader reader) throws Exception;
}
