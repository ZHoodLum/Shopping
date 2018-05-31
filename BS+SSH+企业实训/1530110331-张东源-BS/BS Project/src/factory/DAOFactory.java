package factory;

import impl.CourseDAOImpl;
import impl.InformationDAOImpl;
import impl.SpecialtyDAOImpl;
import impl.StudentDAOImpl;
import impl.TeacherDAOImpl;
import impl.UsersDAOImpl;
import dao.CourseDAO;
import dao.InformationDAO;
import dao.SpecialtyDAO;
import dao.StudentDAO;
import dao.TeacherDAO;
import dao.UsersDAO;

public class DAOFactory {
	//用户
	public static UsersDAO getUsersInstances() {
		return new UsersDAOImpl();
	}
	//课程
	public static CourseDAO GetCourseInstances() {
		return new CourseDAOImpl();
	}
	//专业
	public static SpecialtyDAO GetSpecialtyInstances() {
		return new SpecialtyDAOImpl();
	}
	//学生
	public static StudentDAO GetStudentInstances(){
		return new StudentDAOImpl();
	}
	//教师
	public static TeacherDAO GetTeacherInstances(){
		return new TeacherDAOImpl();
	}
	//信息发布
	public static InformationDAO GetInformationInstances(){
		return new InformationDAOImpl();
	}
}
