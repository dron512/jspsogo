<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
두개의 숫자를 넘겨서 사칙연산...
<%
	String n1 = request.getParameter("num1");
	String n2 = request.getParameter("num2");
	out.println("n1 = "+n1);
	out.println("n2 = "+n2);
	// null -> Integer.parseInt(n1);
	// ->NumberFormatException 예외..생겼다..
	
	// n1의 값이 null일때랑 n2값이 null 일때는 계산을 못함
	// n1의 값이 빈값일때 n2값이 빈값때는 계산을 못함
	
%>
<form>
	<input type="text" name="num1"/>
	<input type="text" name="num2"/>
	<input type="submit" value="확인"/>
</form>
<div style="background-color:#bbb; width:300px; height:200px;padding: 20px;margin:20px;">
<h1>결과</h1>
	<%
	if ( n1 != null && !n1.equals("") ){
		int a = Integer.parseInt(n1);
		int b = Integer.parseInt(n2);
		out.println("더하기 = "+(a+b)+"<br>");
		out.println("빼기 = " +(a-b)+"<br>");
		out.println("곱하기 = "+a*b+"<br>");
		out.println("나누기 = "+a/b+"<br>");
		out.println("나머지 = "+a%b);
	}
	%>
</div>
</body>
</html>