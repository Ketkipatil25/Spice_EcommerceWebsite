<%@page import="com.Dao.ProductDao"%>
<%@page import="java.util.*" %>
<%@page import="com.Model.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Shop Here</title>
<%@include file="components/common_css_js.jsp" %>
<link rel="stylesheet" href="css/admin_style.css">
</head>
<body>
<header>
	        <table>
	            <tr>
	                <th><img src="img/5 (1) (1).png" alt=""></th>
	                <th><h1>Swayambhulaxmi Spice</h1></th>
	            </tr>
	        </table>
    	</header>		
<%@include file="components/navbar.jsp" %>

	<div class="row">
	
	<%
		ProductDao pdao=new ProductDao();
		List<Product> plist=pdao.getAllProducts();
	 
	%>
	<!-- show categories -->
		<div class="col-md-2">
			
		</div>
		<!--  show products-->
		<div class="col-md-8">
			<h1>Number Of Products: <%= plist.size() %></h1>
		</div>
	</div>
	
</body>
</html>