package dao;

import java.util.ArrayList;
import vo.Student;

public interface StudentDAO {
	//��ѯ
	public ArrayList<Student> findStudent(Student student) throws Exception;
		
	//��ѯȫ��ѧ������
	public ArrayList findAllStudent(Student student)throws Exception;
	//ɾ��ѧ������
	public boolean doDelete(int studentid)throws Exception;
	//����ָ��studentid��ѯѧ������
	public Student findStudentById(int studentid)throws Exception;
	//�޸�ѧ������
	public boolean doUpdate(Student student)throws Exception;
	//���ѧ������
	public boolean doCreate(Student student)throws Exception;
			
}
