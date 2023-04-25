<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Swayambhulaxmi Spice Dashboard</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.2.0/css/font-awesome.css" rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
        <a class="home" href="#">Home</a>
        <a class="about" href="#">About us</a>  
        <a class="bag" href="#"><img src="img/shopping-bag.png" alt="cart"></a>
        <a class="cart" href="#">My cart</a>
        <a class="log" href="#"><img src="img/user.png" alt="user"></a>
        <a class="login" href="#">Login</a>
        <a class="register" href="#">Register</a>
    </nav>
    <main>
        <section class="sec1">
            <img class="img1" src="img/calum-lewis-vA1L1jRTM70-unsplash.jpg" alt="This is an image" width="100%">
        </section>
        <section class="sec2">
                <h1>Our Products</h1>
                <hr>
                <h2>Spices</h2>
                <a class="view" href="spice.jsp">View all <i class="fa fa-long-arrow-right" style="font-size:24px"></i></a>
                <br>
                <img class="a1" src="img/kanwardeep-kaur-DpVzcatoBbQ-unsplash.jpg" alt="jar1">
                <img class="a1" src="img/aditya-kulkarni-MCeNtqgbJUo-unsplash.jpg" alt="jar2">
                <img class="a1" src="img/prchi-palwe-YUIMwavk7AQ-unsplash.jpg" alt="jar3">
                <hr>
                <h2>Gravy Mix</h2>
                <a class="view" href="gravy.jsp">View all <i class="fa fa-long-arrow-right" style="font-size:24px"></i></a>
                <br>
                <img class="a1" src="img/raman-sqcH2q7lkvo-unsplash.jpg" alt="jar1">
                <img class="a1" src="img/rohit-mishra-0wGyhPOEhLU-unsplash (1).jpg" alt="jar2">
                <img class="a1" src="img/navdeep-ammla-cnOWJhLKYN8-unsplash.jpg" alt="jar3">
                <hr>
                <h2>Pickles</h2>
                <a class="view" href="Pickles.jsp">View all <i class="fa fa-long-arrow-right" style="font-size:24px"></i></a>
                <br>
                <img class="a1" src="img/1.jpg" alt="jar1">
                <img class="a1" src="img/2.jpg" alt="jar2">
                <img class="a1" src="img/3.jpg" alt="jar3">
        </section>
        <section class="sec3">
            <h1>Customer Reviews</h1>
            <table class="tb2">
                <tr>
                    <td class="td1">
                        <h4>"I recently tried the pavbhaji masala from Swayambhulaxmi spice, and I have to say, it's absolutely fantastic! The blend of spices is perfectly balanced, with just the right amount of heat and flavor. The aroma alone is enough to make your mouth water."</h5>
                        <h5>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        </h5>    
                        <h5>-Anushri Chitte</h5>
                    </td>
                    <td class="td1">
                        <h4>"What I appreciate most about the onion garlic masala is its versatility. It's perfect for both vegetarian and non-vegetarian dishes, and it can be used to add depth and flavor to everything from curries to stir-fries. It's also made with high-quality ingredients, which is evident from the taste."</h4>
                        <h5>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-half-empty"></i>
                        </h5>
                        <h5>-Komal Chavhan</h5>
                    </td>
                    <td class="td1">
                        <h4>"The butter chicken mix is incredibly easy to use, and it saved me a lot of time and effort in the kitchen. All I had to do was mix it with water and cook it with chicken, and within minutes, my kitchen was filled with the delicious aroma of butter chicken."</h4>
                        <h5>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-o"></i>
                        </h5>
                        <h5>-Sanika Patil</h5>
                    </td>
                </tr>
            </table>
        </section>
    </main>

    <footer>
        <a href="#">FAQ</a>
        <a href="mailto:swayambhulaxmi14@gmail.com">Contact us</a>
        <a href="http://facebook.com/Swati.patil2512" target="_blank" rel="noopener noreferrer">Facebook</a>&nbsp;&nbsp;|&nbsp;&nbsp;
            <a href="https://www.instagram.com/invites/contact/?i=sjajpxffrbfi&utm_content=mrquill" target="_blank" rel="noopener noreferrer">Instagram</a>
        <a href="#">Terms of Use</a>
        <a href="#">Privacy Policy</a>
        <a href="#">Refund Policy</a>
        <a href="#">&copy; 2023 | Swayambhulaxmi Spice</a>
    </footer>
</body>
</html>