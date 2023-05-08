<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="com.Model.User" %>


<%
	
	User user1=(User)session.getAttribute("User");
	if(user1==null){
		session.setAttribute("message","You are not logged in !! Login first.");
		response.sendRedirect("Login.jsp");
		return;
	}
	else{
		if(user1.getUserType().equals("User"))
		{
			session.setAttribute("message2","Welcome! "+user1.getName());
			System.out.println("redirected from normal");
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

