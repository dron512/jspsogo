<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.example.ex0406.MemberDB" %>

<%@ page import="java.util.List"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@ include file="head.jsp"%>
<h1>select.jsp</h1>
<%
    MemberDB md = new MemberDB();
    List<String> list = md.doselect();
%>

<%
    for(String ele:list){
%>
    <%=ele%> html 부분.......<br>
<%
    }
%>

</body>
</html>

