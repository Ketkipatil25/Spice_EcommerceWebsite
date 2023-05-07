<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.Model.*" %>
<%@page import="com.Dao.*" %>
<%@page import="java.util.List" %>
 


<%
	
	User user1=(User)session.getAttribute("User");

%>


<style>
	* {
	    box-sizing: border-box;
	}
	
	hr{
	    border-style: dotted none none ;
	    border-color: rgb(23, 2, 2);
	    width: 5%;
	    border-width: 5px;
	    margin-left: 720px;
	    margin-bottom: 0px;
	    background-color: rgb(229, 225, 225);
	}
	
	body {
	    margin: 0px;
	}
	
	header h1 {
	    text-align: right;
	    font-size: 70px;
	    border-style: solid none;
	    font-weight: normal;
	    color: rgb(0, 0, 0);
	    text-decoration: solid;
	    margin-left: 200px;
	    margin-bottom: 0px;
	    font-family: 'Cinzel', serif;
	}
	header img{
	    padding-left: 90px;
	}
	
	header {
	    padding: 40px;
	    background-color:#CDB492;
	}
	
	nav {
	    background-color: #b3151b;
	    overflow: hidden;
	}
	
	nav a, nav div {
	    text-decoration: none;
	    padding: 20px;
	    text-align: center;
	    float: left;
	    color: rgb(255, 255, 255);
	    font-size: 20px;
	    font-family: 'Ysabeau', sans-serif;
	}
	
	.home:hover{
	    color: black;
	}
	
	.dropdown{
	    z-index: 1000;
	    position: absolute;
	    text-align: center;
	    float: left;
	    font-size: 20px;
	    padding-left: 20px;
	
	}
	
	.img1{
	    z-index: 999;
	}
	
	a.btn{
	    background-color: #b3151b;
	    font-size: 20px;
	    border: 0px;
	    padding: 0px;
	    font-family: 'Ysabeau', sans-serif;
	}
	
	.login{
	    padding-left: 0px;
	}
	
	.log{
	    padding: 20px 5px 20px 500px;
	}
	
	.login:hover , .register:hover{
	    color: black;
	}
	
	a.home{
	    padding: 20px 20px 20px 250px;
	}
	
	.home:hover, .about:hover, .cart:hover , .btn:hover{
	    color: black;
	}
	
	.cart{
	    padding: 20px 20px 20px 0px;
	}
	
	.bag{
	    padding: 20px 5px 20px 20px;
	}
	
	main {
	    background-color: #ece5e3;
	    text-align: center;
	    font-family: 'Playfair Display', serif;
	}
	
	h2 {
	    padding: 10px;
	}
</style>
<nav>
        <div class="dropdown">
        
        	<%
				CategoryDao cdao = new CategoryDao();
				List<Category> clist = cdao.getCategories(); 
			
			%>
            <a class="btn btn-danger dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
              Product Categories
            </a> 
            <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
            
            <% 
            	for(Category c:clist){
            %>
             
              <li><a class="dropdown-item"  href="<%= c.getCategoryTitle()%>.jsp"><%= c.getCategoryTitle() %></a></li>
            
            <%
            	}
            %>
            </ul>
        </div>
        <a class="home" href="Dashboard.jsp">Home</a>
        <a class="about" href="#">About us</a>
        <a class="about" href="allproducts.jsp">All Products</a>
        <a class="bag" href="#"><img src="img/shopping-bag.png" alt="cart"></a>
        <a class="cart" href="#" data-bs-toggle="modal" data-bs-target="#cart">My cart<span class="cart-items">(0)</span></a>
        
        <%
       	if(user1 == null){
        	
        
 		%>   
 			<a class="log" href="Login.jsp"><img src="img/user.png" alt="user"></a>
	        <a class="login" href="Login.jsp">Login</a>
	        <a class="register" href="Register.jsp">Register</a>
 			
 			    
        <% 
        }
        else{
        	
		%>    
		
			<a class="log" href="Login.jsp"><img src="img/user.png" alt="user"></a>
			<a class="login" href="<%= user1.getUserType().equals("Admin") ?  "admin.jsp" : "normal.jsp" %>"><%=user1.getUsername()%></a>
	        <a class="register" href="LogoutServlet">Logout</a>
		
		
		<%     		
        	
        }
        
        %>
        
        
    </nav>