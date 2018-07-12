package dao;

import java.util.ArrayList;

import vo.Course;

public interface CourseDAO {
	//��ѯ
	public ArrayList<Course> findCourse(Course course) throws Exception;
	// ��ѯȫ��ͼ������
	public ArrayList<Course> findAllCourse(Course course) throws Exception;
		
	// ���ͼ������
	public boolean doCreate(Course course) throws Exception;

	// ����courseidɾ��course��Ϣ
	public boolean doDelete(int courseid) throws Exception;

	//�޸�
	// ����courseid�޸�course��Ϣ
	public Course findCourseById(int courseid) throws Exception;
	// ����ָ��courseid��ѯͼ��������Ϣ
	public boolean doUpdate(Course course) throws Exception;
}
