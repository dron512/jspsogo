<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <%@ include file="head.jsp"%>
    <script>
        $(document).ready( function(){
            $('#mybtn').on('click', function(){
                $('#mys').slideToggle();
            });
        } )
    </script>
</head>
<body>
<%@ include file="nav.jsp"%>
<div class="container mt-3">
    <h1 class="bg-success text-white" id="myh1">
        index.jsp
    </h1>
    <button id="mybtn">mybtn</button>
    <div id="mys">
        <h1>슬라이드...</h1>
    </div>
</div>
</body>
</html>