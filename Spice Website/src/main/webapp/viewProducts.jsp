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
    
<style>
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
	<%@include file="components/navbar.jsp"%>
	<div class="container-fluid p-3">
		<div class="row">
		
		


			<div class="col-md-12">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text-center">Product Details</p>
						
						<table class="table">
							<thead>
								<tr>
									<th scope="col">Pid</th>
									<th scope="col">Pname</th>
									<th scope="col">PPrice</th>
									<th scope="col">Pdiscount</th>
									<th scope="col">PQuantity</th>
									<th scope="col">PDescription</th>
									<th scope="col">P Category id</th>
									<th scope="col">P Photo</th>
									<th scope="col">Action</th>
								</tr>
							</thead>
							<tbody>
								<%
								ProductDao pdao = new ProductDao();
								List<Product> plist = pdao.getAllProducts();
								for (Product p : plist) {
								%>
								<tr>
									<td><%=p.getpId()%></td>
									<td><%=p.getpName()%></td>
									<td><%=p.getpPrice()%></td>
									<td><%=p.getpDiscount()%></td>
									<td><%=p.getpQuantity()%></td>
									<td><%=p.getpDesc()%></td>
									<td><%=p.getCategoryId() %></td>
									<td><%=p.getpPhoto() %></td>
									<td><a href="editProduct.jsp?pId=<%=p.getpId()%>" class="btn btn-sm btn-primary">Edit</a> 
										
										<%-- <a href="/deleteProduct?id=<%=p.getpId()%>" class="btn btn-sm btn-danger">Delete</a></td>  --%>
								</tr>
								<%
								}
								%>



							</tbody>
						</table>

					</div>
				</div>
			</div>

		</div>
	</div>
</body>
</html>>