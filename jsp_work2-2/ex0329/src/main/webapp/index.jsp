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
<!-- 1. tag태그명.. 2.id선택자 # 3.클래스선택자 . -->
<!-- 
	회원 crud
	회원가입.. 회원로그인.. 회원삭제  
	ppt 문서
-->
<!-- 게시판 crud ppt 문서-->
<div class="container">
	<ul>
		<li><a href="ex01.jsp">1번 insert</a></li>
		<li><a href="select.jsp">2번 select</a></li>
		<li><a href="">3번 delete</a></li>
		<li><a href="">4번 update</a></li>
	</ul>
</div>
</body>
</html>