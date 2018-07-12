package dao;

import java.util.ArrayList;
import vo.Information;

public interface InformationDAO {

	// 查询全部图书类型
	public ArrayList<Information> findAllInformation(Information information) throws Exception;	
	// 添加图书类型
	public boolean doCreate(Information information) throws Exception;
	//修改
	// 根据id修改信息
	public Information findInformationById(int courseid) throws Exception;
	// 根据指定id查询图书类型信息
	public boolean doUpdate(Information information) throws Exception;
}
