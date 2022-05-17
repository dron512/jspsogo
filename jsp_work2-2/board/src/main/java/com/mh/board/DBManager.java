package com.mh.board;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DBManager {
    private static String classname = "com.mysql.cj.jdbc.Driver";
    private static String url = "jdbc:mysql://localhost:3306/aaa";
    private static String user = "root";
    private static String pw = "1234";

    public static Connection connect() throws Exception{
        Class.forName(classname);
        Connection con = DriverManager.getConnection(url,user,pw);
        return con;
    }
    //select 파일을 열면 닫기 눌러줘야.. 다른 사람이 그 파일을 수정가능
    public static void close(Connection con, PreparedStatement pstmt, ResultSet rs)
                    throws Exception{
        if(rs!=null) rs.close();
        if(pstmt!=null) pstmt.close();
        if(con!=null) con.close();
    }
    // insert update delete
    public static void close(Connection con, PreparedStatement pstmt) throws Exception{
        if(pstmt!=null) pstmt.close();
        if(con!=null) con.close();
    }
}
