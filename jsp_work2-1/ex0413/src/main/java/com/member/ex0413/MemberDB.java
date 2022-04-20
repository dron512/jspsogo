package com.member.ex0413;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class MemberDB {
    public List<Member> doselect(){
        List<Member> list = new ArrayList();
        Connection con = null;  // DB연결
        PreparedStatement pstmt = null; // SQL문 작성..
        ResultSet rs = null;  // DB Table 저장..
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");  // mysql.jar 라이브러리 확인
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/b-21",
                                            "root","1234");
            pstmt = con.prepareStatement("select * from member");
            rs = pstmt.executeQuery();
            while (rs.next()){
                Member member = new Member();
                member.setId(rs.getInt("id"));
                member.setUsername(rs.getString("username"));
                member.setPassword(rs.getString("password"));
                member.setGender(rs.getString("gender"));

                list.add(member);
            }
            System.out.println("DB 연결 성공");
        }catch (Exception e){
            e.printStackTrace();
        }
        return list;
    }
    public void dodelete(String []ids){
        Connection con = null;
        PreparedStatement pstmt = null;
        // ids [ 2 3 4 ] -> 2,3,4
        String values = "";
        for ( int i =0; i<ids.length; i++){
            if( i == (ids.length-1) )
                values = values + ids[i];
            else
                values = values + ids[i]+",";
        }
        // 2,3,4,
        System.out.println("values = "+values);
        try{
            // jar 로딩..
            Class.forName("com.mysql.cj.jdbc.Driver");
            // DB 연결
            con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/b-21",
                    "root","1234");
            // sql 구문 준비
            pstmt = con.prepareStatement("delete from member where id in ("+values+")");
            pstmt.executeUpdate();// sql 구문 실행...
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
