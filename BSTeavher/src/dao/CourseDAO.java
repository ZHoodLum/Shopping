package dao;

import java.util.ArrayList;

import vo.Course;

public interface CourseDAO {
	//查询
	public ArrayList<Course> findCourse(Course course) throws Exception;
	// 查询全部图书类型
	public ArrayList<Course> findAllCourse(Course course) throws Exception;
		
	// 添加图书类型
	public boolean doCreate(Course course) throws Exception;

	// 根据courseid删除course信息
	public boolean doDelete(int courseid) throws Exception;

	//修改
	// 根据courseid修改course信息
	public Course findCourseById(int courseid) throws Exception;
	// 根据指定courseid查询图书类型信息
	public boolean doUpdate(Course course) throws Exception;
}
