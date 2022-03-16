<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="ex0308.AA" %>
<%@page import="java.time.LocalDateTime"%>
<%
	AA a1 = new AA();
	int b = 20;
	a1.doA();
	int c = a1.doB();
	String d = a1.doC();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.ccc{
		background-color: red;
	}
</style>
</head>
<body>
1. html 뼈대
2. css 꾸미는 효과
<div class="ccc">
<% out.println(c); %>
<%=d%>
<%=LocalDateTime.now()%>
</div>
</body>
</html>