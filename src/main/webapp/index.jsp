<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Travel World</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <style>
        body, html {
            margin: 0;
            padding: 0;
            height: 100%;
            overflow-x: hidden;
        }

        .carousel-inner img {
            height: 100vh;
            object-fit: cover;
        }

        .carousel {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100vh;
            z-index: 0;
        }

        .overlay {
            position: relative;
            z-index: 1;
            height: 100vh;
        }

        .navbar {
            background-color: transparent;
            padding: 15px 30px;
            width: 100%;
            position: absolute;
            top: 0;
            left: 0;
            z-index: 2;
            font-weight: bold;
        }

        .navbar-brand {
            color: #f5f5dc !important;
            font-size: 1.8rem;
            font-weight: bold;
            text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.4);
            margin-left: 10px;
        }

        .navbar-nav .nav-link {
            color: #f5f5dc !important;
            margin-left: 20px;
            font-size: 1.1rem;
            text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.4);
            transition: color 0.3s ease;
        }

        .navbar-nav .nav-link:hover {
            color: #ffd700 !important;
        }

        .hero {
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: flex-start;
            text-align: left;
            color: #f5f5dc;
            padding-left: 10%;
            box-sizing: border-box;
        }

        .hero h1 {
            font-size: 4rem;
            font-weight: bold;
            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.7);
            margin-bottom: 10px;
            color: white;
        }

        .hero h4 {
            font-size: 1.8rem;
            font-weight: normal;
            text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.6);
            margin-bottom: 30px;
            color: white;
        }

        .hero .btn {
            background-color: #ff6347;
            border: none;
            padding: 12px 30px;
            font-size: 1.1rem;
            border-radius: 5px;
            transition: background-color 0.3s ease;
            color: #f5f5dc;
        }

        .hero .btn:hover {
            background-color: blue;
            color: #f5f5dc;
        }
    </style>
</head>
<body>
    <%@ include file="header.jsp" %>

    <!-- Carousel Background -->
    <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
      <div class="carousel-inner">
        <div class="carousel-item active">
         
          <img src="images/jog.jpg" class="d-block w-100" alt="Slide 1">
            <div class="carousel-caption d-none d-md-block">
       <h2><b>Explore the Beauty of Karnataka</b></h2>
<h5><b>Discover ancient temples, scenic landscapes, and vibrant culture in every corner of the state.</b></h5>
       
      </div>
          
        </div>
        <div class="carousel-item">
          <img src="images/resort1.jpg" class="d-block w-100" alt="Slide 2">
           <div class="carousel-caption d-none d-md-block">
       <h2><b>Stay Amidst Nature</b></h2>
<h5><b>Experience the serenity of forest resorts nestled in the lush greenery of Karnataka's wilderness.</b></h5>
       
      </div>
        </div>
        <div class="carousel-item">
          <img src="images/buffet.jpg" class="d-block w-100" alt="Slide 3">
           <div class="carousel-caption d-none d-md-block">
     <h2><b>Savor Authentic Karnataka Cuisine</b></h2>
<h5><b>Delight in the rich flavors and diverse culinary traditions that reflect the culture of Karnataka.</b></h5>
     
      </div>
        </div>
      </div>
    </div>

    <!-- Overlay content above carousel -->
    <div class="overlay">
       

        <div class="hero">
            <div>
                <h4><b>Welcome to our Travel World</b></h4>
                <h1>TRAVEL<br> WORLD</h1>
                <a href="login.jsp" class="btn btn-primary">Read More</a>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
