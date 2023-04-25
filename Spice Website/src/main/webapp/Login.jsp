<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<head>
    <meta charset="UTF-8">
    <title>User Login-Swayambhu Laxshmi Spice</title>
    <%@include file="/components/common_css_js.jsp" %>
    <link rel="stylesheet" href="/css/style.css" type="text/css">
    

</head>
<style>
.custom-bg{
	background-color:#712cf9;
}
}
</style>

<body>
	<%@include file="/components/navbar.jsp" %>
	<div class="container">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-3">
					<div class="card-header custom-bg text-white">
					<h3>Login</h3>
					</div>	
					<div class="card-body">
							<form action="LoginController" method="post">
						  <div class="mb-3">
						    <label for="exampleInputEmail1" class="form-label">Email address</label>
						    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="email" required>
						    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
						  </div>
						  <div class="mb-3">
						    <label for="exampleInputPassword1" class="form-label">Password</label>
						    <input type="password" class="form-control" id="exampleInputPassword1" name="password" required>
						  </div>
						  	<a href="Register.jsp" class="text-center d-block mb-3">If Not Registered CLick Here</a>
						  <div class="container text-center"> 
						  	<button type="submit" class="btn btn-primary custom-bg border-0 ">Submit</button>
						  	<button type="reset" class="btn btn-primary custom-bg border-0">Reset</button>
						  </div>
						  
						</form>
					</div>
				</div>
					
				</div>
			</div>
		</div>
	
	
	</div>
	
</body>
</html>