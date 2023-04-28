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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/spice_css.css">
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
        <a class="home" href="Dashboard.jsp">Home</a>
        <a class="about" href="#">About us</a>  
        <a class="bag" href="#"><img src="img/shopping-bag.png" alt="cart"></a>
        <a class="cart" href="#">My cart</a>
        <a class="log" href="#"><img src="img/user.png" alt="user"></a>
        <a class="login" href="#">Login</a>
        <a class="login" href="#">Register</a>
    </nav>
    <main>
        <div class="container1">
            <h1>Spice and Masala</h1>
            <table>
                <tr>
                    <td class="data t1">
                        <img src="img/Ogm.jpg">
                        <h4>Onion garlic masala</h4>
                        <h5>
                        <%@include file="/components/star.jsp" %>
                        </h5>
                        <!-- <a href="#">ADD TO CART</a> -->
                        <p>Price: Rs.500 per 1kg</p>
                    </td>
                    <td class="data t1">
                        <img src="img/garam masala - india's most famo.jpg" alt="">
                        <h4>Garam masala</h4>
                        <h5>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i></h5>
                        <p>Price : Rs.120 per 100g</p>
                    </td>
                    <td class="data t1">
                        <img src="img/Indian Khana_ Homemade Kitchen K.jpg" alt="">
                        <h4>Kitchen King masala</h4>
                        <h5><i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-half-empty"></i></h5>
                        <p>Price : Rs.75 per 100g</p>
                    </td>
                </tr>
                <br>
                <tr>
                    <td class="data">
                        <img src="img/Biryani Masala Powder Recipe - S.jpg">
                        <h4>Biryani Masala</h4>
                        <h5><i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-half-empty"></i></h5>
                        <p>Price: Rs.128 per 100g</p>
                    </td>
                    <td class="data">
                        <img src="img/Sambar Powder Recipe - Sambar Ma.jpg" alt="">
                        <h4>Sambar Masala</h4>
                        <h5>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i></h5>
                        <p>Price: Rs.65 per 100g</p>
                    </td>
                    <td class="data">
                        <img src="img/Malvani Masala recipe in Marathi.jpg" alt="">
                        <h4>Malvani Masala</h4>
                        <h5><i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-o"></i></h5>
                        <p>Price: Rs.75 per 100g</p>
                    </td>
                </tr>
                <br>
                <tr>
                    <td class="data">
                        <img src="img/Masala Chaas _ Spiced Buttermilk (1).jpg">
                        <h4>Buttermilk Masala</h4>
                        <h5>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i></h5>
                        <p>Price: Rs.68 per 100g</p>
                    </td>
                    <td class="data">
                        <img src="img/Kolhapuri Usal_Misal Recipe with.jpg" alt="">
                        <h4>Misal Masala</h4>
                        <h5><i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-half-empty"></i></h5>
                        <p>Price: Rs.70 per 100g</p>
                    </td>
                    <td class="data">
                        <img src="img/Turmeric Exporters in India _ Tu.jpg" alt="">
                        <h4>Turmeric powder</h4>
                        <h5><i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-o"></i></h5>
                        <p>Price: Rs.320 per 1kg</p>
                    </td>
                </tr>
            </table>
        </div>
    </main>
</body>
</html>