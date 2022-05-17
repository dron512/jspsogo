package com.mh.board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class BoardManager {

    public List<Board> doselect() throws Exception {
        List<Board> list = new ArrayList<>();

        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try{
            con = DBManager.connect();
            pstmt = con.prepareStatement("select * from board");
            rs = pstmt.executeQuery();
            while(rs.next()){
                Board board = new Board();
                board.setIdx(rs.getInt("idx"));
                board.setName(rs.getString("name"));
                board.setTitle(rs.getString("title"));
                board.setWdate(rs.getString("wdate"));
                board.setCount(rs.getInt("count"));
                list.add(board);
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        finally {
            DBManager.close(con,pstmt,rs);
        }

        Board board = new Board();
        board.setIdx(0);
        board.setName("name");

        list.add(board);
        return list;
    }
}
