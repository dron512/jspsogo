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
		font-family: 'Black Han Sans', sans-serif;
	}
	.container{
		margin: 0 auto;
		width:700px;
		background-color: #ccc;
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
<h1>index페이지</h1>
<p>
안녕하세요 저는 ..홍길동입니다...
</p>
</body>
</html>