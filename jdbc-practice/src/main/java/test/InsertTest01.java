package test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class InsertTest01 {

	public static void main(String[] args) {
		insert("기획 3");
		insert("기획 4");
		insert("기획 5");
	}

	private static boolean insert(String deptName) {
		boolean result = false;

		Connection conn = null;
		Statement stmt = null;

		try {
			// 1. JDBC Driver Class 로딩
			Class.forName("org.mariadb.jdbc.Driver");

			// 2. 연결하기
			String url = "jdbc:mariadb://192.168.100.55:3306/webdb?charset=utf8";
			conn = DriverManager.getConnection(url, "webdb", "webdb");

			// 3.Statement 생성
			stmt = conn.createStatement();

			// 4. SQL 실행
			String sql = "insert into dept values(null, '" + deptName + "')";

			int count = stmt.executeUpdate(sql);

			// 5. 결과 처리
			result = count == 1;
//			if(count == 1) { result = true; }

		} catch (ClassNotFoundException e) {
			System.out.println("드라이버 로딩 실패:" + e);
		} catch (SQLException e) {
			System.out.println("Error:" + e);
		} finally {
			try {
				if(stmt != null) {
					stmt.close();
				}
				if(conn != null) {
					conn.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
			return result;
		
	}
}
