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
	//�û�
	public static UsersDAO getUsersInstances() {
		return new UsersDAOImpl();
	}
	//�γ�
	public static CourseDAO GetCourseInstances() {
		return new CourseDAOImpl();
	}
	//רҵ
	public static SpecialtyDAO GetSpecialtyInstances() {
		return new SpecialtyDAOImpl();
	}
	//ѧ��
	public static StudentDAO GetStudentInstances(){
		return new StudentDAOImpl();
	}
	//��ʦ
	public static TeacherDAO GetTeacherInstances(){
		return new TeacherDAOImpl();
	}
	//��Ϣ����
	public static InformationDAO GetInformationInstances(){
		return new InformationDAOImpl();
	}
}
