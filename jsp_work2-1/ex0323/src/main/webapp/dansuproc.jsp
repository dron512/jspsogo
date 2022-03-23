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
	String a = request.getParameter("dan");
	//a = 31
	int ia = Integer.parseInt(a);
	// ctrl + shift + c 주석설정및 해제
// 	out.println("a = "+(ia+1));
	for(int i =1; i< 10; i++){
		out.println(ia+"*"+i+"="+i*ia);
// 		out.println("*");
// 		out.println(i);
// 		out.println("=");
// 		out.println(i*ia);
		out.println("<br>");
	}
	
%>
</body>
</html>