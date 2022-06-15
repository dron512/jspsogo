<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="com.dg.board.Board"%>
<%@ page import="com.dg.board.BoardManager"%>
<%
    String idx = request.getParameter("idx");

    BoardManager bm = new BoardManager();
    boolean success = bm.dodelete(Integer.parseInt(idx));

    if(success){
        out.println("<script>");
        out.println("alert('글삭제하였습니다.');");
        out.println("window.location.href='board.jsp';");
        out.println("</script>");
    }
%>

