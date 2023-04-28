<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="com.Model.User" %>


<%
	
	User user=(User)session.getAttribute("username");
	if(user==null){
		session.setAttribute("message","You are not logged in !! Login first.");
		response.sendRedirect("Login.jsp");
		return;
	}
	else{
		if(user.getUserType().equals("User") || user.getUserType().equals("Admin"))
		{
			response.sendRedirect("Dashboard.jsp");
		}
		else{
			System.out.println("User not registered!! Please Register first");
			response.sendRedirect("Register.jsp");
		}
	}


%>     
<!DOCTYPE html>
<html>
	<head>
		
		<title>JSP Page</title>
	</head>
	<body>
		<h1>This is normal user panel page</h1>
	</body>
</html>

