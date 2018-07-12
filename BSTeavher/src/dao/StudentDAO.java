package dao;

import java.util.ArrayList;
import vo.Student;

public interface StudentDAO {
	//查询
	public ArrayList<Student> findStudent(Student student) throws Exception;
		
	//查询全部学生档案
	public ArrayList findAllStudent(Student student)throws Exception;
	//删除学生档案
	public boolean doDelete(int studentid)throws Exception;
	//根据指定studentid查询学生档案
	public Student findStudentById(int studentid)throws Exception;
	//修改学生档案
	public boolean doUpdate(Student student)throws Exception;
	//添加学生档案
	public boolean doCreate(Student student)throws Exception;
			
}
