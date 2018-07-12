package impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import vo.Teacher;
import dao.TeacherDAO;
import dbc.DBConnection;

public class TeacherDAOImpl implements TeacherDAO {
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	boolean flag = false;
	DBConnection dbc = new DBConnection();
	private Connection conn = dbc.getConnection();
	//查询全部
	@Override
	public ArrayList findAllTeacher(Teacher teacher) throws Exception {
		ArrayList<Teacher> allTeacher = new ArrayList<Teacher>();
		try {
			String sql = "select * from Teacher";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				teacher = new Teacher();
				teacher.setTeacherid(rs.getInt("teacherid"));
				teacher.setTeachername(rs.getString("teachername"));
				teacher.setWage(rs.getInt("wage"));
				teacher.setTel(rs.getString("tel"));
				teacher.setWorkage(rs.getInt("workage"));
				allTeacher.add(teacher);
			}
			rs.close();
			pstmt.close();

		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			dbc.connClose();
		}
		return allTeacher;
	}
	//删除
	@Override
	public boolean doDelete(int teacherid) throws Exception {
		try {
			String sql = "delete from teacher where teacherid=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, teacherid);
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
	public boolean doCreate(Teacher teacher) throws Exception {
		try {
			String sql = "insert into teacher values(?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, teacher.getTeacherid());
			pstmt.setString(2, teacher.getTeachername());
			pstmt.setInt(3, teacher.getWage());
			pstmt.setInt(4, teacher.getWorkage());
			pstmt.setString(5, teacher.getTel());
			
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
	//修改
	//根据id查询教师
	@Override
	public Teacher findTeacherById(int teacherid) throws Exception {
		Teacher teacher = new Teacher();
		try {
			String sql = "select * from Teacher where Teacherid=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, teacherid);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				teacher.setTeacherid(rs.getInt("Teacherid"));//后期根据id改name
				teacher.setTeachername(rs.getString("Teachername"));
				teacher.setWage(rs.getInt("wage"));
				teacher.setWorkage(rs.getInt("workage"));
				teacher.setTel(rs.getString("tel"));
			}

		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			dbc.connClose();
		}
		return teacher;
	}
	//点击按钮进行修改
	@Override
	public boolean doUpdate(Teacher teacher) throws Exception {
		try {
			String sql = "update teacher set teachername=?,wage=?,workage=?,tel=? where teacherid=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, teacher.getTeachername());
			pstmt.setInt(2,teacher.getWage());
			pstmt.setInt(3,teacher.getWorkage());
			pstmt.setString(4, teacher.getTel());
			pstmt.setInt(5,teacher.getTeacherid());
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
