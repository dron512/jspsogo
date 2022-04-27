<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@ include file="head.jsp"%>
<h1>insert.jsp</h1>
<form action="insertproc.jsp">
    username <input type="text" name="username"/><br/>
    password <input type="text" name="password"/><br/>
    성별<br/>
    남  <input type="radio" name="gender" value="남" checked/>
    여 <input type="radio" name="gender" value="여"/>
    <input type="submit" value="저장"/>
</form>
</body>
</html>
