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
//        list.add(new Member());

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
}
