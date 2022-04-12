package ex0405;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.util.ArrayList;
import java.util.List;

public class MemberDBManager {
	
	private static String classname = "com.mysql.cj.jdbc.Driver";
	private static String url = "jdbc:mysql://localhost:3306/aaa";
	private static String user = "root";
	private static String password = "1234";
	
	public List<Member> doselect(){
		ArrayList<Member> al = new ArrayList();
		Connection con;
		PreparedStatement pstmt;
		ResultSet rs;
		try {
			Class.forName(classname);
			con = DriverManager.getConnection(url, user, password);
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
			Class.forName(classname);
			con = DriverManager.getConnection(url,MemberDBManager.user,password);
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

	public String dodelete(String ids[]) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String dids="";
		for (int i =0; i<ids.length ;i++) {
			if( ids.length-1 != i) 	
				dids = dids + ids[i]+",";
			else
				dids = dids + ids[i];
		}
		try {
			Class.forName(classname);
			con = DriverManager.getConnection(url, user, password);
			pstmt = con.prepareStatement("delete from member "
										+ " where id in ("+dids+")");
			pstmt.executeUpdate();
			return "success";
		}catch (Exception e) {
			e.printStackTrace();
			return "fail";
		}
	}
	
	public Member doselectone() {
		return new Member();
	}
}





