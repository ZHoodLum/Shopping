package dao;

import java.util.ArrayList;

import factory.DAOFactory;
import vo.Teacher;


public interface TeacherDAO {
	//查询全部档案
		public ArrayList findAllTeacher(Teacher teacher)throws Exception;
		//删除档案
		public boolean doDelete(int teacherid)throws Exception;		
		//根据指定id查询
		public Teacher findTeacherById(int teacherid)throws Exception;
		//修改档案
		public boolean doUpdate(Teacher teacher)throws Exception;
		//添加档案
		public boolean doCreate(Teacher teacher)throws Exception;
}
