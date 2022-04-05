<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Black+Han+Sans:400" rel="stylesheet">
<style>
	*{
		box-sizing: border-box;
		font-family: 'Black Han Sans', sans-serif;
	}
	.container{
		margin: 0 auto;
		width:700px;
		background-color: #ccc;
	}
	.main{
		margin: 0 auto;
		width:700px;
		background-color: #eee;
		padding: 1.5rem;
	}
	ul{
		list-style: none;
	}
	li{
		display : inline;
	}
	a{
		background-color: lime;
		display : inline-block;
		margin : 1rem;
		padding : 1rem;
		text-decoration: none;
	}
</style>
</head>
<body>
<%@ include file="nav.jsp" %>
<div class="main">
	<h1>insert페이지</h1>
	<form action="insertproc.jsp">
		username<br>
		<input type="text" name="username"/><br>
		password<br>
		<input type="text" name="password"/><br>
		<input type="submit" value="저장"/>
	</form>
</div>
</body>
</html>