<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="insertproc.jsp">
	username<br>
	<input type="text" name="username" placeholder="Username"/><br>
	password<br>
	<input type="text" name="password" placeholder="Password"/><br>
	남
	<input type="radio" name="gender" value="남" checked="checked"/>
	여
	<input type="radio" name="gender" value="여"/><br>
	<input type="submit" value="저장"/>
</form>
</body>
</html>