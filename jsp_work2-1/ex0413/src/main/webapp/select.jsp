<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="com.member.ex0413.MemberDB"%>
<%@ page import="com.member.ex0413.Member" %>
<%
    MemberDB md = new MemberDB();
    List<Member> list = md.doselect();
    out.println(list);
%>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<%@ include file="head.jsp" %>
<h1>select.jsp</h1>
</body>
</html>