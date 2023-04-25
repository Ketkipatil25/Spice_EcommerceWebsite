<style>
        /* Modify the background color */
         
        .navbar-custom {
            background-color:#FF6464;
        }
        /* Modify brand and text color */
         
        .navbar-custom .navbar-brand,
        .navbar-custom .navbar-text {
            color: green;
        }
</style>
<nav class="navbar navbar-expand-lg navbar-light navbar-custom">
  <a class="navbar-brand" href="index.jsp">Swayambhu Laxshmi Spice</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp">Home <span class="sr-only"></span></a>
      </li>
      
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Categories
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Action</a>
          <a class="dropdown-item" href="#">Another action</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li>
      
    </ul>
    <ul class="navbar-nav ms-auto">
    	<li class="nav-item active">
    		<a class="nav-link" href="Login.jsp">Login</a>
    	</li>
    	<li class="nav-item active">
    		<a class="nav-link" href="Register.jsp">Register</a>
    	</li>
    </ul>
  </div>
</nav>