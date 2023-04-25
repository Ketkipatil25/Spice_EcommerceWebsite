<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Signup-Swayambhu Laxshmi Spice</title>
 <%@include file="/components/common_css_js.jsp" %>
</head>
<body>
<%@include file="/components/navbar.jsp" %>
	<div class="container-fluid">
		<div class="row px-5 mt-3 m-0 ">
	<div class="col-md-4 offset-md-4">
		<div class="card">
		<%
			String message3=(String)session.getAttribute("message");

			if(message3!=null){
				//prints
				//out.println(message);
		%>
		<%@include file="/components/message.jsp" %>
		<%} %>
		<%
			String message4=(String)session.getAttribute("message2");

			if(message4!=null){
				//prints
				//out.println(message);
		%>
		<%@include file="/components/message2.jsp" %>
		<%} %>
		
		
		
		<div class="card-body px-5">
		<div class="container">
		</div>
		<img  src="images/signup.png" style="max-width:300px;" class="img-fluid" alt="img not found">
			<h3 class="text-center my-3">Sign Up</h3>
			<form action="RegisterController" method="post">
				<div class="form-group">
   				<label for="username">Username</label>
    			<input type="text" class="form-control" id="username" placeholder="username" name="username" required>
  				</div>
  				<div class="form-group">
    			<label for="name">Name</label>
    			<input type="text" class="form-control" id="name" placeholder="name" name="name" required>
  				</div>
  				<div class="form-group">
    			<label for="email">Email</label>
    			<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="email" name="email" required>
  				</div>
  				<div class="form-group">
    			<label for="password">Password</label>
    			<input type="password" class="form-control" id="password" placeholder="password" name="password" required>
  				</div>
  				<div class="form-check">
    			<input type="checkbox" class="form-check-input" id="exampleCheck1">
    			<label class="form-check-label" for="exampleCheck1">Remember Password</label>
  				</div>
  				<div class="container text-center">
  					<button class="btn btn-outline-primary">Register</button>
  					<button class="btn btn-outline-primary">Reset</button>
  				</div>
  
			</form>
		</div>
		
		</div>
	</div>
</div>
	</div>
				
	
</body>
</html>