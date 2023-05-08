<%@page import="com.Dao.ProductDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="com.Model.*" %>
	<%@page import="com.Dao.*" %>
	<%@page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Swayambhulaxmi Spice Dashboard</title>
   <%@include file="/components/fontawesome.jsp" %>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Cardo:ital@0;1&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Ysabeau&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display+SC:wght@700&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Cinzel:wght@500&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/style_dash.css">
    <%@include file="/components/common_css_js.jsp"%>

</head>
<body>

	

	<%@include file="components/navbar.jsp"%>
	<div class="container">
		<div class="card">
		
			<div class = "card-body">
			<%
	
	int pId = Integer.parseInt(request.getParameter("pId")); 
	ProductDao pdao = new ProductDao();
	Product  p1= pdao.getProductbyId(pId);
	System.out.println("p1:"+p1);	
	%>
				<form action="UpdateProduct" method="post" enctype="multipart/form-data">
		     <div><input type="text" name="pId" value="<%=p1.getpId()%>">
		     </div>
		      
		      		<div class="form-group mt-3" >
		      			<input type="text" class="form-control" name="pName" value="<%= p1.getpName()%>" required />
		      		</div>
		      		
		      		<div class="form-group mt-3">
		      		
		      			<textarea style="height : 150px"  class="form-control" placeholder="Enter Product Description" name="pDesc"  required></textarea>
		      		
		      		</div>
		      		
		      		<div class="form-group mt-3" >
		      			<input type="number" class="form-control" name="pPrice" placeholder="Enter Product Price" value="<%= p1.getpPrice()%>" required />
		      		</div>
		      		
		      		<div class="form-group mt-3" >
		      			<input type="number" class="form-control" name="pDiscount" placeholder="Enter Product Discount"  value="<%= p1.getpDiscount()%>"/>
		      		</div>
		      		
		      		<div class="form-group mt-3" >
		      			<input type="number" class="form-control" name="pQuantity" placeholder="Enter Product Quantity" value="<%= p1.getpQuantity()%>" required />
		      		</div>
		      		
		      		<!-- product category -->
		      		<%
		      		
		      		List<Category> categoryList=cdao.getCategories();
		      		%>
		      		
		      		<div class="form-group mt-3" >
		      			
		      			<select name="categoryId" class="form-control" id="categoryId" >
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
		      			<input type="file" id="pPic" name="pPic" value="<%=p1.getpPhoto() %>"  required />
		      			
		      		</div>
		      	
		      		
		      		<div class="container text-center mt-3">
		      		
		      			<button class="btn btn-primary text-white">Update Product</button>
		      		
		      		</div>
		      		
		      	</form>
			
			</div>
		
		</div>
		      	
			
</div>


</body>
</html>