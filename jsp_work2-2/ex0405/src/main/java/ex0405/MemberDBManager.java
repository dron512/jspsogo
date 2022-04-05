package ex0405;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.util.ArrayList;
import java.util.List;

public class MemberDBManager {
	
	public List<Member> doselect(){
		ArrayList<Member> al = new ArrayList();
		
		Connection con;
		PreparedStatement pstmt;
		ResultSet rs;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(
				"jdbc:mysql://localhost:3306/aaa", "root", "1234");
			pstmt = con.prepareStatement("select * from member");
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Member member = new Member();
				member.setId(rs.getInt("id"));
				member.setUsername(rs.getString("username"));
				member.setPassword(rs.getString("password"));
				al.add(member);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return al;
	}
	
	public void doInsert(String user,String pass) {
		// ctrl + shfit + o import 가져오기.
		Connection con;
		PreparedStatement pstmt;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/aaa","root","1234");
			pstmt = con.prepareStatement(
					"insert into member (username,password) values (?,?)"
					);
			pstmt.setString(1, user);
			pstmt.setString(2, pass);
			
			pstmt.executeUpdate();
			
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
}





