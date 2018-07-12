package impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import vo.Specialty;
import dao.SpecialtyDAO;
import dbc.DBConnection;

public class SpecialtyDAOImpl implements SpecialtyDAO {
	
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	boolean flag = false;
	DBConnection dbc = new DBConnection();
	private Connection conn = dbc.getConnection();
	//查询
	@Override
	public ArrayList<Specialty> findSpecialty(Specialty specialty)throws Exception {
		ArrayList<Specialty> Specialty = new ArrayList<Specialty>();
		try {
			String sql = "select * from specialty where specialtyid=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, specialty.getSpecialtyid());
			rs = pstmt.executeQuery();
			while (rs.next()) {
				specialty = new Specialty();
				specialty.setSpecialtyid(rs.getInt("specialtyid"));
				specialty.setSpecialtyname(rs.getString("specialtyname"));
				specialty.setSpecialtyname(rs.getString("specialtycollege"));
				Specialty.add(specialty);

			}
			rs.close();
			pstmt.close();

		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			dbc.connClose();
		}
		return Specialty;
	}

	//查询全部
	@Override
	public ArrayList findAllSpecialty(Specialty specialty) throws Exception {
		ArrayList<Specialty> allSpecialty = new ArrayList<Specialty>();
		try {
			String sql = "select * from Specialty";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				specialty = new Specialty();
				specialty.setSpecialtyid(rs.getInt("Specialtyid"));
				specialty.setSpecialtyname(rs.getString("Specialtyname"));
				specialty.setSpecialtycollege(rs.getString("Specialtycollege"));
				allSpecialty.add(specialty);
			}
			rs.close();
			pstmt.close();

		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			dbc.connClose();
		}
		return allSpecialty;
	}
	
//添加
	@Override
	public boolean doCreate(Specialty specialty) throws Exception {
		try {
			String sql = "insert into specialty values(?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, specialty.getSpecialtyid());
			pstmt.setString(2, specialty.getSpecialtyname());
			pstmt.setString(3, specialty.getSpecialtycollege());
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
	public boolean doDelete(int specialtyid) throws Exception {
		try {
			String sql = "delete from specialty where specialtyid=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, specialtyid);
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
	//根据编号查看
	@Override
	public Specialty findSpecialtyById(int specialtyid) throws Exception {
		Specialty specialty = new Specialty();
		try {
			String sql = "select * from specialty where specialtyid=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, specialtyid);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				specialty.setSpecialtyid(rs.getInt("specialtyid"));//根据id改name
				specialty.setSpecialtyname(rs.getString("specialtyname"));
				specialty.setSpecialtycollege(rs.getString("specialtycollege"));
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			dbc.connClose();
		}
		// TODO Auto-generated method stub
		return specialty;
	}
	//修改
	@Override
	public boolean doUpdate(Specialty specialty) throws Exception {
		try {
			String sql = "update specialty set specialtyname=?,specialtycollege=? where specialtyid=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, specialty.getSpecialtyname());
			pstmt.setString(2, specialty.getSpecialtycollege());
			
			pstmt.setInt(3,specialty.getSpecialtyid());
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
