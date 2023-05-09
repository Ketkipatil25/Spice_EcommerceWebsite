<%@page import="com.Model.*" %>
<%@page import="com.Dao.*" %>
<%@page import="java.util.List" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Spice masala</title>
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
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.2.1/css/fontawesome.min.css" integrity="sha384-QYIZto+st3yW+o8+5OHfT6S482Zsvz2WfOzpFSXMF9zqeLcFV0/wlZpMtyFcZALm" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/spice_css.css">
    <%@include file="/components/common_css_js.jsp"%>
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
    <main>
        <div class="container">
            <h1>Pickles</h1>
            <div class="row">
            
            <%
		
		
		 	String cid = request.getParameter("category"); 
		
			ProductDao pdao = new ProductDao();
			List<Product> plist = null;
			
			if(cid == null){
				plist = pdao.getAllProductsById(cid);
			}
			
			else{ 
				plist = pdao.getAllProductsById(cid);
				
			}  
			
		
		%>
		
		
		
			<div class="col-md-4">
			
			
						
					<!-- product card -->
					<div class="card-columns">
					
						<%
						
						for(Product p:plist){
						
						%>	
						
						<div class="card product-card">
						
							<div class="container text-center">
							
								<img src="img/products/<%= p.getpPhoto().trim() %>" style="max-height: 300px; max-width:100%;width:auto;" class="card-img-top mt-3" alt="Spice-img">
							
							</div>
						
							<div class="card-body">
							
								<h5 class="card-title"><%= p.getpName() %></h5>
								<p class="card-text"><%= Helper.get10words(p.getpDesc()) %></p>
							
							</div>
							
							<div class="card-footer text-center">
								<button type="button" class="btn btn-outline-primary"> &#8377; <%= p.getpriceAfterApplyingDiscount() %>/- <span class="text-secondary discount-label m-3"> <del>&#8377; <%= p.getpPrice() %> </del><span class="m-3"><%= p.getpDiscount() %> % off </span></span></button>
								<br>
								<button class="btn btn-outline-danger mt-3" onclick="add_to_cart(<%= p.getpId()%>,'<%= p.getpName()%>',<%= p.getpriceAfterApplyingDiscount()%>)">Add to Cart</button>
							</div>
						
						</div>
						
							
						
						<%
						
						}
						
						%>
					
					</div>
				
			
		
		</div>
            
            </div>
        </div>
    </main>
</body>
</html> 