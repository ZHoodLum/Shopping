package dbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {

	// ������Ӷ���connection �رն���
	private static final String dbDriver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";

	private static final String dbUrl = "jdbc:sqlserver://192.168.197.129;DatabaseName=BS";

	private static final String dbName = "sa";

	private static final String dbPwd = "281029";

	private Connection conn = null;

	// ��ȡconn
	public Connection getConnection() {

		try {
			// ������������
			Class.forName(dbDriver);

			// ��ȡCONN
			conn = DriverManager.getConnection(dbUrl, dbName, dbPwd);

		} catch (Exception e) {
            e.printStackTrace();
			System.out.println("��������ʧ��");

		}

		return conn;

	}

	// �ر�conn
	public void connClose() {

		if (conn != null)

			try {

				conn.close();

			} catch (SQLException e) {
				e.printStackTrace();
				System.out.println("conn�ر��쳣");

			}

	}

}
