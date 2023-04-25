<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.Model.User" %>
<%
	
	User user=(User)session.getAttribute("current-user");
	if(user==null){
		session.setAttribute("message","You are not logged in !! Login first.");
		response.sendRedirect("login.jsp");
		return;
	}
	else{
		if(user.getUserType().equals("normal"))
		{
			session.setAttribute("message","You are not admin !! Do not access this page.");
			response.sendRedirect("login.jsp");
			return;
		}
	}


%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Admin Panel</title>
		<%@include file="components/common_css_js.jsp" %>
	</head>
	<body>
		
		// nav bar
		
		<%@include file="components/navbar.jsp" %>
		<h1>This is admin panel page</h1>
	</body>
</html>
