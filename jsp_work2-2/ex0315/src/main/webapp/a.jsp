<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
/* 
class	.
id		#
tag     tag태그명 
margin padding 여백의 의해서 크기가 커지는 현상..
*/
	div{
		margin:10px;
		padding:10px;
	}
	#adiv{
		background-color: green;
	}
	#bdiv{
		background-color: red;
	}
</style>
</head>
<body>
<div id="adiv">
	<form action="b.jsp">
		아이디<input type="text" name="id">
		비번<input type="text" name="pw">
		<input type="submit" value="전송">
	</form>
</div>
<!--
	method 방식은 get post 방식
	get 주소줄에 이동되는 파라메타가 보여지는 방식
	post 주소줄에 이동되는 파라메타가 안 보여지는 방식
-->
<div id="bdiv">
	두개의 넣기 +, -
	<form action="c.jsp" method="get">
		숫자 : <input type="text" name="num1"><br>
		숫자 : <input type="text" name="num2"><br>
		<input type="submit" value="전송">
	</form>
</div>
</body>
</html>