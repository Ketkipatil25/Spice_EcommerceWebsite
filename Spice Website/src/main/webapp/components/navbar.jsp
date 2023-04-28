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
	    padding: 20px 5px 20px 730px;
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
            <a class="btn btn-danger dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
              Product Categories
            </a>  
            <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
              <li><a class="dropdown-item" href="spice.jsp">Spices Masala Powder</a></li>
              <li><a class="dropdown-item" href="gravy.jsp">Gravy Premix</a></li>
              <li><a class="dropdown-item" href="pickles.jsp">Pickles</a></li>
            </ul>
        </div>
        <a class="home" href="Dashboard.jsp">Home</a>
        <a class="about" href="#">About us</a>  
        <a class="bag" href="#"><img src="img/shopping-bag.png" alt="cart"></a>
        <a class="cart" href="#">My cart</a>
        <a class="log" href="#"><img src="img/user.png" alt="user"></a>
        <a class="login" href="Login.jsp">Login</a>
        <a class="register" href="Register.jsp">Register</a>
    </nav>