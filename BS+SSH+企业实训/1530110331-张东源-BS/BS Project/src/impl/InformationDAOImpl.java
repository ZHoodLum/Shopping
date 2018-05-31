package impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import vo.Information;
import dao.InformationDAO;
import dbc.DBConnection;

public class InformationDAOImpl implements InformationDAO {
	
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	boolean flag = false;
	DBConnection dbc = new DBConnection();
	private Connection conn = dbc.getConnection();

	//查询全部
	@Override
	public ArrayList<Information> findAllInformation(Information information) throws Exception {
		ArrayList<Information> allInformation = new ArrayList<Information>();
		try {
			String sql = "select * from Information";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				information = new Information();
				information.setInformationid(rs.getInt("informationid"));
				information.setInformationname(rs.getString("informationname"));
				allInformation.add(information);
			}
			rs.close();
			pstmt.close();

		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			dbc.connClose();
		}
		return allInformation;
	}

	@Override
	public boolean doCreate(Information information) throws Exception {
		try {
			String sql = "insert into information values(?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, information.getInformationid());
			pstmt.setString(2, information.getInformationname());
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

	@Override
	public Information findInformationById(int informationid) throws Exception {
		Information information = new Information();
		try {
			String sql = "select * from Information where Informationid=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, informationid);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				information.setInformationid(rs.getInt("Informationid"));//后期根据id改name
				information.setInformationname(rs.getString("Informationname"));
			}

		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			dbc.connClose();
		}
		return information;
	}

	@Override
	public boolean doUpdate(Information information) throws Exception {
		try {
			String sql = "update Information set Informationname=? where Informationid=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, information.getInformationname());
			pstmt.setInt(2,information.getInformationid());
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
