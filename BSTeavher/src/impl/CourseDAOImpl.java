package impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import vo.Course;
import dao.CourseDAO;
import dbc.DBConnection;

public class CourseDAOImpl implements CourseDAO {
	
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	boolean flag = false;
	DBConnection dbc = new DBConnection();
	private Connection conn = dbc.getConnection();
	//查询
	@Override
	public ArrayList<Course> findCourse(Course course) throws Exception {
		ArrayList<Course> Course = new ArrayList<Course>();
		try {
			String sql = "select * from Course where courseid=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, course.getCourseid());
			rs = pstmt.executeQuery();
			while (rs.next()) {
				course = new Course();
				course.setCourseid(rs.getInt("courseid"));
				course.setCoursename(rs.getString("coursename"));
				Course.add(course);

			}
			rs.close();
			pstmt.close();

		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			dbc.connClose();
		}
		return Course;
	}
	
	//查询全部
	@Override
	public ArrayList<Course> findAllCourse(Course course) throws Exception {
		ArrayList<Course> allCourse = new ArrayList<Course>();
		try {
			String sql = "select * from Course";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				course = new Course();
				course.setCourseid(rs.getInt("courseid"));
				course.setCoursename(rs.getString("coursename"));
				allCourse.add(course);
			}
			rs.close();
			pstmt.close();

		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			dbc.connClose();
		}
		return allCourse;
	}
	
	//添加
	@Override
	public boolean doCreate(Course course) throws Exception {
		try {
			String sql = "insert into course values(?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, course.getCourseid());
			pstmt.setString(2, course.getCoursename());
			int c = pstmt.executeUpdate();
			if (c > 0) {
				flag = true;
			}
			pstmt.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			dbc.connClose();
		}
		return flag;
	}
	//删除
	@Override
	public boolean doDelete(int courseid) throws Exception {
		try {
			String sql = "delete from course where courseid=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, courseid);
			int c = pstmt.executeUpdate();
			if (c > 0) {
				flag = true;
			}
			pstmt.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			dbc.connClose();
		}
		return false;
	}
	
	//修改
	//根据id进行查看
	@Override
	public Course findCourseById(int courseid) throws Exception {
		Course course = new Course();
		try {
			String sql = "select * from Course where Courseid=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, courseid);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				course.setCourseid(rs.getInt("Courseid"));//后期根据id改name
				course.setCoursename(rs.getString("Coursename"));
			}

		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			dbc.connClose();
		}
		return course;
	}
	//修改
	@Override
	public boolean doUpdate(Course course) throws Exception {
		try {
			String sql = "update course set coursename=? where courseid=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, course.getCoursename());
			pstmt.setInt(2,course.getCourseid());
			int count = pstmt.executeUpdate();
			if (count > 0) {
				flag = true;
			}
			pstmt.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbc.connClose();
		}
		return flag;
	}

	

}
