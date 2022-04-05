package ex0405;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class MemberDBManager {

	public void doInsert(String user,String pass) {
		// ctrl + shfit + o import 가져오기.
		Connection con;
		PreparedStatement pstmt;
		
		try {
			Class.forName("com.mysql.jdbc.cj.Driver");
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
	}
}
