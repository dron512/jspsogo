<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-05-11
  Time: 오후 3:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%

    // 세션 내용 삭제
    session.invalidate();
    response.sendRedirect("index.jsp");

%>