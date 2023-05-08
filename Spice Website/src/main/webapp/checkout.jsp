<%@page import="com.Model.User" %>

<% 

	User user=(User)session.getAttribute("User");
	if(user==null){
		session.setAttribute("message","You are not logged in !! Login first to access checkout page.");
		response.sendRedirect("Login.jsp");
		return;
	}


%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<%@include file="components/common_css_js.jsp" %>
	
	<title>Checkout Page</title>
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
		
		<div style="font-family: 'Ysabeau', sans-serif;" class="container">
		
			<div class ="row mt-5" >
					
				<div class ="col-md-6" >
				
					<!-- Card -->
					<div class="card">
						<div class="card-body">
							
							<h2 class="text-center mb-3">Order Details</h2>
							<div class="cart-body"></div>	
						
						</div>
					</div>
				
				</div>
				
				<div class ="col-md-6" >
				
					<!-- form details -->
					<div class="card">
						<div class="card-body">
							
							<h2 class="text-center mb-3">Your Details</h2>	
							<form action="#!">
								
								<div class="mb-3">
								    <label for="exampleInputEmail1" class="form-label">Email address</label>
								    <input value="<%=user.getEmail() %>" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Email">
								    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
							 	</div>
							 	
							 	<div class="mb-3">
								    <label for="name" class="form-label">Your Name</label>
								    <input value="<%=user.getUsername() %>" type="text" class="form-control" id="name" aria-describedby="emailHelp" placeholder="Enter Name">
							 	</div>
							 	
							 	<div class="mb-3">
								    <label for="phoneno" class="form-label">Your Contact no.</label>
								    <input type="text" class="form-control" id="phoneno" aria-describedby="emailHelp" placeholder="Enter Contact no.">
							 	</div>
							 	
							 	<div class="mb-3">
								  <label for="exampleFormControlTextarea1" class="form-label">Your Shipping Address</label>
								  <textarea class="form-control" id="exampleFormControlTextarea1" placeholder="Enter your Address" rows="3"></textarea>
								</div>
								
								<div class="container text-center">
								
									<button style="background-color:#b3151b;" class="btn text-white" href="#">Order Now</button>
									<button style="background-color:#b3151b" class="btn text-white" href="allproducts.jsp">Continue Shopping</button>
								
								</div>
							
							</form>
						</div>
					</div>
					
				
				</div>
				
			</div>
		
		</div>
		
		<%@include file="components/common_modal.jsp" %>
</body>
</html>