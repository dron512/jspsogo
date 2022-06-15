<%@ page import="com.dg.board.BoardManager" %>
<%@ page import="com.dg.board.Board" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%
    String idx = request.getParameter("idx");

    BoardManager bm = new BoardManager();
    Board board = bm.doselectrow(Integer.parseInt(idx));
%>
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
    <%@include file="head.jsp"%>
</head>
<body>
<%@include file="nav.jsp"%>
<div class="container mt-3">
    <h1 class="bg-success text-white">
        view.jsp
    </h1>
    <div class="row">
        <div class="col">
            제목
            <div class="border border-primary p-3"><%=board.getTitle()%></div>
            내용
            <div class="border border-primary p-3" style="height: 20rem;"><%=board.getContent()%></div>
            작성자
            <div class="border border-primary p-3"><%=board.getName()%></div>
        </div>
    </div>
    <div class="row mt-3 mb-3">
        <div class="col">
            <a class="btn btn-primary" href="#">글수정</a>
            <a class="btn btn-primary" href="delete.jsp?idx=<%=board.getIdx()%>">글삭제</a>
        </div>
    </div>
</div>
</body>
</html>
