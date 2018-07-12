package impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import vo.Users;
import dao.UsersDAO;
import dbc.DBConnection;

public class UsersDAOImpl implements UsersDAO {

	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	boolean flag = false;
	DBConnection dbc = new DBConnection();
	private Connection conn = dbc.getConnection();
	//登陆
	@Override
	public boolean findLogin(Users users) throws Exception {
		try {
			String sql = "select uname,limits from users where userid=? and upwd=?";// 查询语句
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, users.getUserid());
			pstmt.setString(2, users.getUpwd());
			rs = pstmt.executeQuery(); // 返回一个结果集。
			if (rs.next()) {
				flag = true;
				users.setUname(rs.getString("uname"));
				users.setLimits(rs.getInt("limits"));
			}
			rs.close();
			pstmt.close();
		} catch (Exception ex) {
			ex.printStackTrace();

		} finally {
			dbc.connClose();
		}
		return flag;
	}
	//注册
	@Override
	public boolean doCreate(Users users) throws Exception {
		try {
			String sql = "insert into users values(?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, users.getUserid());
			pstmt.setString(2, users.getUname());
			pstmt.setString(3, users.getUpwd());
			pstmt.setInt(4, users.getLimits());
			
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

}
