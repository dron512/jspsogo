package ex0323;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class MemberManager {
	public void doInsert(String a,String b, String c) {
		System.out.println("호출했음.");
		
		// ctrl + shift + o
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager
					.getConnection(
					"jdbc:mysql://localhost:3306/b-21",
					"root",
					"1234");
			pstmt = con.prepareStatement(
					"insert into member "
					+ "(username,password,gender) "
					+ "values "
					+ "(?,?,?)");
			
			pstmt.setString(1, a);
			pstmt.setString(2, b);
			pstmt.setString(3, c);
			
			pstmt.executeUpdate();
			System.out.println("성공");
		}catch (Exception e) {
			System.out.println("실패");
			e.printStackTrace();
		}
		
	}
}
