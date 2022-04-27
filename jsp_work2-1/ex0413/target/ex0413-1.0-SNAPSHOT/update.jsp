<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@ include file="head.jsp"%>
<h1>update.jsp</h1>
<form action="updateproc.jsp">
    <input type="hidden" name="id" value="<%=request.getParameter("id")%>" />
    username <input type="text" name="username"/><br/>
    password <input type="text" name="password"/><br/>
    성별<br/>
    남  <input type="radio" name="gender" value="남" checked/>
    여 <input type="radio" name="gender" value="여"/>
    <input type="submit" value="저장"/>
</form>
</body>
</html>
