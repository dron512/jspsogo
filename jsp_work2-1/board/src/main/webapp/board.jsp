<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="com.dg.board.Board"%>
<%@ page import="com.dg.board.BoardManager"%>
<%@ page import="java.util.List" %>

<%
    BoardManager bm = new BoardManager();
    List<Board> list = bm.doselect();
%>
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
    <%@include file="head.jsp"%>
</head>
<body>
<%@include file="nav.jsp"%>
<div class="container  mt-3">
    <h1 class="bg-success text-white">
        board.jsp
    </h1>
    <div class="row">
        <div class="col">
            <table class="table table-hover">
                <thead>
                <tr class="table-primary">
                    <th scope="col">순번</th>
                    <th scope="col">제목</th>
                    <th scope="col">작성자</th>
                    <th scope="col">작성일</th>
                    <th scope="col">조회수</th>
                </tr>
                </thead>
                <tbody>
                <% for(int i =0; i<list.size(); i++) {
                    Board board = list.get(i);
                %>
                    <tr>
                       <th scope="row"><%=board.getIdx()%></th>
                        <td><a href="view.jsp?idx=<%=board.getIdx()%>"><%=board.getTitle()%></a></td>
                        <td><%=board.getName()%></td>
                        <td><%=board.getWdate()%></td>
                        <td><%=board.getCount()%></td>
                    </tr>
                <% } %>
                </tbody>
            </table>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <a class="btn btn-primary" href="insert.jsp">글쓰기</a>
        </div>
    </div>
</div>
</body>
</html>
