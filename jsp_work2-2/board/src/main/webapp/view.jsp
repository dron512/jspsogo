<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.mh.board.BoardManager" %>
<%@ page import="com.mh.board.Board" %>
<%@ page import="java.util.List" %>
<%
    String idx = request.getParameter("idx");
    if(idx == null) idx = "1";

    BoardManager bm = new BoardManager();
    Board board = bm.doselectrow( Integer.parseInt(idx) );
%>
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
    <%@include file="head.jsp"%>
</head>
<body>
<%@include file="nav.jsp"%>
<div class="container">
    <h1>view.jsp</h1>
    <div class="row">
        <div class="col">
            <table class="table">
                <tr class="table-primary">
                    <th class="display-6"><%=board.getTitle()%></th>
                </tr>
                <tr class="table-primary">
                    <td>작성날짜 : <%=board.getWdate()%></td>
                </tr>
                <tr>
                    <td class="p-2" style="height:20rem;"><%=board.getContent()%></td>
                </tr>
                <tr class="table-primary">
                    <td>작성자 : <%=board.getName()%></td>
                </tr>
            </table>
        </div>
    </div>
    <div class="mb-3">
        <a class="btn btn-primary" href="update.jsp">글수정</a>
        <a class="btn btn-primary" href="deleteproc.jsp?idx=<%=board.getIdx()%>">글삭제</a>
    </div>
</div>
</body>
</html>
