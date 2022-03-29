package member;

import java.sql.*;

public class DriverTest {
	public String doInsert(String username,String password) {
		// 연결을 들고 있는거
		Connection con;
		// sql구문 담는 객체
		PreparedStatement pstmt;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/aaa", "root", "1234");
			pstmt = con.prepareStatement("insert into member "
										+ "(username, password) "
										+ "values "
										+ "(?,?)");
			pstmt.setString(1, username);
			pstmt.setString(2, password);
			pstmt.executeUpdate();
			System.out.println("Success");
			return "suc";
		} catch (SQLException ex) {
			System.out.println("SQLException" + ex);
		} catch (Exception ex) {
			System.out.println("Exception:" + ex);
		}
		return "fail";
	}
}