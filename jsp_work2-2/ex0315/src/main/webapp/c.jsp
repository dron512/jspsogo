<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	out.println("abc"+11+22+"<br>");
	//abc1122
	out.println("abc"+(11+22)+"<br>");
	//abc33
	String a = request.getParameter("num1");
	String b = request.getParameter("num2");
	int ia = Integer.parseInt(a);
	int ib = Integer.parseInt(b);
	out.println("a+b = "+(ia+ib)+"<br>");
	out.println("a-b = "+(ia-ib)+"<br>");
%>
</body>
</html>