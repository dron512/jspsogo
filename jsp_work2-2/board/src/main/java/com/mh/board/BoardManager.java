package com.mh.board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

public class BoardManager {

    //리스트가져오기
    public List<Board> doselect(int pagenum) throws Exception {
        int start = ( pagenum -1 )* 5;
        List<Board> list = new ArrayList<>();

        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try{
            con = DBManager.connect();
            pstmt = con.prepareStatement(
                    "select * from board order by idx desc limit "+start+",5"
            );
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

        return list;
    }

    // 총 페이지 개수 가져오기
    public int getPageCnt() throws Exception {
        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try{
            con = DBManager.connect();
            pstmt = con.prepareStatement("select " +
                                            "ceil(count(idx)/5) as cnt " +
                                            "from board");
            rs = pstmt.executeQuery();
            if(rs.next())
                return rs.getInt("cnt");
        }
        catch (Exception e){
            e.printStackTrace();
        }
        finally {
            DBManager.close(con,pstmt,rs);
        }
        return 1;
    }

    // 글 쓰기
    public void doinsert(Board board) throws Exception{
        Connection con = null;
        PreparedStatement pstmt = null;
        try{
            con = DBManager.connect();
            pstmt = con.prepareStatement("insert into board " +
                                             "(title,content,name,wdate) "+
                                             " values " +
                                             "(?,?,?,?)");
            pstmt.setString(1, board.getTitle());
            pstmt.setString(2, board.getContent());
            pstmt.setString(3, board.getName());
            pstmt.setString(4, LocalDateTime.now().toString());
            pstmt.executeUpdate();
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            DBManager.close(con,pstmt);
        }
    }

    public Board doselectrow(int idx) throws Exception{
        Board board = new Board();

        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try{
            con = DBManager.connect();
            pstmt = con.prepareStatement("select * from board where idx=?");
            pstmt.setInt(1, idx);
            // select -> executeQuery
            // insert update delete executeUpdate();
            rs = pstmt.executeQuery();
            if(rs.next()){
                board.setIdx(rs.getInt("idx"));
                board.setName(rs.getString("name"));
                board.setTitle(rs.getString("title"));
                board.setContent(rs.getString("content"));
                board.setWdate(rs.getString("wdate"));
                board.setCount(rs.getInt("count"));
            }
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            DBManager.close(con,pstmt,rs);
        }

        return board;
    }

    public void dodelete(int idx) throws Exception{
        Connection con = null;
        PreparedStatement pstmt = null;
        try{
            con = DBManager.connect();
            pstmt = con.prepareStatement("delete from board where idx =?");
            pstmt.setInt(1, idx);
            pstmt.executeUpdate();
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            DBManager.close(con,pstmt);
        }
    }

}

