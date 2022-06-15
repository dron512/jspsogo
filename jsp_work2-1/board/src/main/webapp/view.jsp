<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
    <%@include file="head.jsp"%>
</head>
<body>
<%@include file="nav.jsp"%>
<div class="container mt-3">
    <h1 class="bg-success text-white">
        view.jsp
    </h1>
    <div class="row">
        <div class="col">
            제목
            <div>제목입니다</div>
            내용
            <div>네요네요ㅕ녕입니다</div>
            작성자
            <div>작성잠ㅇ뉘라ㅓ붗ㅈ</div>
        </div>
    </div>
    <div class="row mt-3 mb-3">
        <div class="col">
            <a class="btn btn-primary" href="#">글수정</a>
            <a class="btn btn-primary" href="delete.jsp?idx=">글삭제</a>
        </div>
    </div>
</div>
</body>
</html>
