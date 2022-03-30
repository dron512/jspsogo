<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="ex0323.MemberManager" %>
<%@ page import="java.util.ArrayList" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	ArrayList<String> aa = new ArrayList();
	aa.add("홍길동");
	aa.add("김길동");
	aa.add("박길동");
	// 0 1 2
	for(int i =0; i<aa.size();i++){
		out.println(aa.get(i)+"<br>");
	}
	out.println("<hr>");
	for(String temp : aa){
		out.println(temp+"<br>");
	}
	request.setCharacterEncoding("utf-8");
	
	String user = request.getParameter("username");
	String pass = request.getParameter("password");
	String gen = request.getParameter("gender");
	
	out.println("<hr>");
	out.println("user = "+ user);
	out.println("pass = "+ pass);
	out.println("gen = "+ gen);
	
	MemberManager mm = new MemberManager();
	mm.doInsert(user,pass,gen);
%>
</body>
</html>