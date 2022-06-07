<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.mh.board.BoardManager" %>
<%@ page import="com.mh.board.Board" %>
<%
  String idx = request.getParameter("idx");

  BoardManager bm = new BoardManager();
  bm.dodelete(Integer.parseInt(idx));

  response.sendRedirect("board.jsp");
%>