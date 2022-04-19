<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="ex0405.*" %>
<%
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	String id = request.getParameter("id");
	
	out.println("username : "+username);
	out.println("password : "+password);
	out.println("id : "+id);
	
	MemberDBManager mdm = new MemberDBManager();
	mdm.doupdate(username, password, id);
	
	response.sendRedirect("select.jsp");
%>