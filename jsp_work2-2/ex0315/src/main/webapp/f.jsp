<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	div{ width: 300px; height: 200px; }
	#div0{
		background-color: red;
	}
	#div1{
		background-color: blue;
	}
	#div2{
		background-color: yellow;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready( function(){
		$('#div0').on('click',function(){  alert('빨강');  });
	} );
	function show(){
		// ctrl + shift + c 주석 설정 및 해제
// 		$('#div0').show();
		$('#div0').fadeIn(3000,function(){ alert('다나옴'); });
	}
	function hide(){
// 		$('#div0').hide();
		$('#div0').fadeOut(2000,function(){ alert('없어짐'); });
	}
</script>
</head>
<body>
<button onclick="show()">show</button>
<button onclick="hide()">hide</button>
<%
	for(int i =0; i<3;i++){
		out.println("<div id=\"div"+i+"\"></div>");
	}
%>
</body>
</html>
<script type="text/javascript">
// 	document.getElementById("div0").onclick = function(){ alert('빨강'); }
// 	document.getElementById("div1").onclick = function(){ alert('파랑'); }
// 	document.getElementById("div2").onclick = function(){ alert('노랑'); }
</script>
