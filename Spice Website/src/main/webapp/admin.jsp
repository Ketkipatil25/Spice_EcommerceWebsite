<%@page import="com.Model.Category"%>
<%@page import="java.util.List"%>
<%@page import="com.Dao.*"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.Model.User" %>
 
<%
Map<String,Double> usercount=HelperDao.getCount_User();
Map<String,Double> categorycount=HelperDao.getCount_Category();
Map<String,Double> productcount=HelperDao.getCount_Product();
%>
<%
	
	User user=(User)session.getAttribute("User");
	if(user==null){
		System.out.println("dont ");
		session.setAttribute("message","Please Login");
		response.sendRedirect("Login.jsp");
		return;
	}
	else{
		if(user.getUserType().equals("User"))
		{
			System.out.println("U are User ");
			session.setAttribute("message2","You are not admin !! Do not access this page.");
			response.sendRedirect("Login.jsp");
			return;
		}
		else{
			
%> 

<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Admin Panel</title>
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
		
		<div class="container admin">
		<div class="container-fluid">
		<%@include file="components/message.jsp" %>
		</div>
		
		</div>
		<div class = "container">
		<!-- first row -->
			<div class = "row mt-5">
			
			<!-- column one of row one  -->
				<div class = "col-md-4">
					<div class= "card">
						<div class="card-body text-center">
						
							<div class= "container">
								<img style= "max-width: 125px" class= "image fluid rounded-circle"  alt="user-img" src="img/team.png">
							</div>
							<h2><%= usercount.get("userCount") %></h2>
							<h1 class = "text-uppercase text-muted">Users</h1>
						</div>
					</div>
				</div>
				
			<!-- column two -->	
				<div class = "col-md-4">
					<div class= "card">
						<div class="card-body text-center">
						
							<div class= "container">
								<img style= "max-width: 125px" class= "image fluid rounded-circle"  alt="category-img" src="img/categories.png">
							</div>
							
							<h2><%= categorycount.get("categoryCount") %></h2>
							<h1 class = "text-uppercase text-muted">Categories</h1>
						</div>
					</div>
				</div>
				
			<!-- column three -->	
				<div class = "col-md-4">
					<div class= "card">
						<div class="card-body text-center">
						
							<div class= "container">
								<img style= "max-width: 125px" class= "image fluid rounded-circle"  alt="product-img" src="img/Product.png">
							</div>
							
							<h2><%= productcount.get("productcount") %></h2>
							<a style="text-decoration:none;" href="viewProducts.jsp"   >
							<h1 class="text-uppercase text-muted">Products</h1>
							</a>
							
						</div>
					</div>
				</div>
			
			</div>
			
			<div class ="row mt-5 mb-5" >
					
				<div class ="col-md-6" >
				
					<div class= "card" data-bs-toggle="modal" data-bs-target="#add-category-modal">
						<div class="card-body text-center">
						
							<div class= "container">
								<img style= "max-width: 125px" class= "image fluid rounded-circle"  alt="add-categories-img" src="img/add_categories.png">
							</div>
							
							<p class="mt-2" >Click here to add new category--></p>
							<h1 class = "text-uppercase text-muted">Add-Categories</h1>
						</div>
					</div>	
				
				</div>
				
				<div class ="col-md-6" >
				
					<div class= "card" data-bs-toggle="modal" data-bs-target="#add-product-modal">
						<div class="card-body text-center">
						
							<div class= "container">
								<img style= "max-width: 125px" class= "image fluid rounded-circle"  alt="add-product-img" src="img/add-product.png">
							</div>
							
							<p class="mt-2" >Click here to add new product--></p>
							<h1 class = "text-uppercase text-muted">Add-Products</h1>
						</div>
					</div>	
				
				</div>
				
			</div>
			
		</div>
		<!-- add category modal -->
		
		<!-- Modal -->
		<div class="modal fade" id="add-category-modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog modal-lg">
		    <div class="modal-content">
		      <div class="modal-header text-white">
		        <h1 class="modal-title fs-5" id="exampleModalLabel">Fill Category Details</h1>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		      <div class="modal-body">
		      	
		      	<form action="ProductOperationServlet" method="post">
		      		<input type="hidden" name="operation" value="addCategory">
		      		<div class="form-group" >
		      			<input type="text" class="form-control" name="categoryId" placeholder="Enter Category Id" required />
		      		</div>
		      		<div class="form-group" >
		      			<input type="text" class="form-control" name="categoryTitle" placeholder="Enter Category Title" required />
		      		</div>
		      		
		      		<div class="form-group mt-3">
		      		
		      			<textarea style="height : 300px"  class="form-control" placeholder="Enter Category Description" name="categoryDescription" required ></textarea>
		      		
		      		</div>
		      		
		      		<div class="container text-center mt-3">
		      		
		      			<button class="btn text-white">Add Category</button>
		      		
		      		</div>
		      		
		      	</form>
		      	
		      	
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn text-white" data-bs-dismiss="modal">Close</button>

		      </div>
		    </div>
		  </div>
		</div>
		
		<!-- End Category Model -->
		
		<!-- Product Model -->
		
		<!-- Modal -->
		<div class="modal fade" id="add-product-modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog modal-lg">
		    <div class="modal-content">
		      <div class="modal-header text-white">
		        <h1 class="modal-title fs-5" id="exampleModalLabel">Product Details</h1>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		      <div class="modal-body">
		      	
		      	<form action="ProductOperationServlet" method="post" enctype="multipart/form-data">
		      	<input type="hidden" name="operation" value="addProduct"/>
		      
		     <div class="form-group" >
		      			<input type="text" class="form-control" name="pId" placeholder="Enter Product Id" required />
		      		</div> 
		      
		      		<div class="form-group" >
		      			<input type="text" class="form-control" name="pName" placeholder="Enter Product Title" required />
		      		</div>
		      		
		      		<div class="form-group mt-3">
		      		
		      			<textarea style="height : 150px"  class="form-control" placeholder="Enter Product Description" name="pDesc" required></textarea>
		      		
		      		</div>
		      		
		      		<div class="form-group mt-3" >
		      			<input type="number" class="form-control" name="pPrice" placeholder="Enter Product Price" required />
		      		</div>
		      		
		      		<div class="form-group mt-3" >
		      			<input type="number" class="form-control" name="pDiscount" placeholder="Enter Product Discount" />
		      		</div>
		      		
		      		<div class="form-group mt-3" >
		      			<input type="number" class="form-control" name="pQuantity" placeholder="Enter Product Quantity" required />
		      		</div>
		      		<!-- product category -->
		      		<%
		      		
		      		List<Category> categoryList=cdao.getCategories();
		      		%>
		      		
		      		<div class="form-group mt-3" >
		      			
		      			<select name="categoryId" class="form-control" id="categoryId">
		      			<%
		      			for(Category c:categoryList){
		      			%>
		      			<option value="<%= c.getCategoryId() %> "> 
		      			<%= c.getCategoryTitle() %>
		      			 </option>
		      			<%
		      			} %>
		      			</select>
		      			
		      		</div>
		      		
		      		
		      		<div class="form-group mt-3" >
		      		
		      			<label for="pPic">Select Picture of Product</label>
		      			<br>	
		      			<input type="file" id="pPic" name="pPic" required />
		      			
		      		</div>
		      		
		      		
		      		
		      		<div class="container text-center mt-3">
		      		
		      			<button class="btn text-white">Add Product</button>
		      		
		      		</div>
		      		
		      	</form>
		      	
		      	
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn text-white" data-bs-dismiss="modal">Close</button>

		      </div>
		    </div>
		  </div>
		</div>
		
		<%@include file="components/common_modal.jsp" %>
	</body>
</html>




<% 		

		}
	}
%>

