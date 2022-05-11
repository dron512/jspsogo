<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<%@ include file="head.jsp" %>
<h1>index.jsp</h1>
<%
    String username=(String)session.getAttribute("username");
    if(username == null){
%>
<form action="loginproc.jsp">
    id <input name="username" type="text"/>
    pw <input name="password" type="text"/>
    <input type="submit" value="로그인"/>
</form>
<%
    }else{
%>
<h1><%=username%> 안녕하세요....</h1>
<a href="logout.jsp">로그아웃</a>
<%
    }
%>
<!-- 로그인화면 구현 -->

</body>
</html>