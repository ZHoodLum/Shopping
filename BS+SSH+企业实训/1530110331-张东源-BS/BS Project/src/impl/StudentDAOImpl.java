package impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import vo.Student;
import dao.StudentDAO;
import dbc.DBConnection;

public class StudentDAOImpl implements StudentDAO {
	
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	boolean flag = false;
	DBConnection dbc = new DBConnection();
	private Connection conn = dbc.getConnection();
	
	//查询全部
	@Override
	public ArrayList findAllStudent(Student student) throws Exception {
		ArrayList<Student> allStudent = new ArrayList<Student>();
		try {
			String sql = "select studentid,studentname,sex,place,score,coursename,specialtyname "
					+ "from course as a,specialty as b,student as d "
					+ "where d.courseid = a.courseid and d.specialtyid = b.specialtyid";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				student = new Student();
				student.setStudentid(rs.getInt("studentid"));
				student.setStudentname(rs.getString("studentname"));
				student.setSex(rs.getString("sex"));
				student.setScore(rs.getInt("score"));
				student.setPlace(rs.getString("place"));
				
				student.setSpecialtyname(rs.getString("specialtyname"));
				student.setCoursename(rs.getString("coursename"));
				
				allStudent.add(student);
			}
			rs.close();
			pstmt.close();

		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			dbc.connClose();
		}
		return allStudent;
	}
		
	//删除
	@Override
	public boolean doDelete(int studentid) throws Exception {
		try {
			String sql = "delete from student where studentid=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, studentid);
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
	//添加
	@Override
	public boolean doCreate(Student student) throws Exception {
		try {
			String sql="insert into student values(?,?,?,?,?,?,?)";
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, student.getStudentid());
			pstmt.setString(2, student.getStudentname());
			pstmt.setString(3, student.getSex());
			pstmt.setString(4, student.getPlace());
			pstmt.setInt(5, student.getScore());
			
			pstmt.setInt(6, student.getSpecialtyid());
			pstmt.setInt(7, student.getCourseid());
			int count=pstmt.executeUpdate();
			if(count>0){
				flag=true;
			}
			   pstmt.close();
	} catch (Exception e) {
		e.printStackTrace();
	}
	 finally{
		 dbc.connClose();
	}
	return flag;
	}
	//根据编号查找
	@Override
	public Student findStudentById(int studentid) throws Exception {
		Student student=new Student();
		try {
			String sql = "select studentid,studentname,sex,place,score,coursename,specialtyname "
					+ "from course as a,specialty as b,student as d "
					+ "where d.courseid = a.courseid and d.specialtyid = b.specialtyid and studentid=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, studentid);

			rs=pstmt.executeQuery();
			if(rs.next()){
				student.setStudentid(rs.getInt("studentid"));
				student.setStudentname(rs.getString("studentname"));
				student.setSex(rs.getString("sex"));
				student.setScore(rs.getInt("score"));
				student.setPlace(rs.getString("place"));
				
				student.setSpecialtyname(rs.getString("specialtyname"));
				student.setCoursename(rs.getString("coursename"));
				
			}
			rs.close();
			pstmt.close();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			dbc.connClose();
		}	
		return student;
	}
	//修改
	@Override
	public boolean doUpdate(Student student) throws Exception {
		try{
		String sql="update student set "
				+ "studentname=?,sex=?,place=?,score=?,specialtyid=?,courseid=? where studentid=?";		
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, student.getStudentname());
		pstmt.setString(2, student.getSex());
		pstmt.setString(3, student.getPlace());
		pstmt.setInt(4, student.getScore());
		pstmt.setInt(5, student.getSpecialtyid());
		pstmt.setInt(6, student.getCourseid());
		pstmt.setInt(7, student.getStudentid());
		int count=pstmt.executeUpdate();
		if(count>0){
			flag=true;
		}
		pstmt.close();
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		dbc.connClose();
	}
	return flag;
	}
//查询
	@Override
	public ArrayList<Student> findStudent(Student student) throws Exception {
		ArrayList<Student> Student = new ArrayList<Student>();
		try {
			String sql = "select studentid,studentname,sex,place,score,coursename,specialtyname "
					+ "from course as a,specialty as b,student as d "
					+ "where d.courseid = a.courseid and d.specialtyid = b.specialtyid and studentid=?";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, student.getStudentid());
			rs = pstmt.executeQuery();
			while (rs.next()) {
				student = new Student();
				student.setStudentid(rs.getInt("studentid"));
				student.setStudentname(rs.getString("studentname"));
				student.setSex(rs.getString("sex"));
				student.setScore(rs.getInt("score"));
				student.setPlace(rs.getString("place"));				
				student.setSpecialtyname(rs.getString("specialtyid"));
				student.setCoursename(rs.getString("courseid"));
				Student.add(student);

			}
			rs.close();
			pstmt.close();

		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			dbc.connClose();
		}
		return Student;
	}

}
