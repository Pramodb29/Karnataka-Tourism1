<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Footer</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
<style>
    .footer {
        background-color: #0C2340;
        color: white;
        padding: 60px 0;
        font-family: Arial, sans-serif;
    }
    .footer a {
        color: white;
        text-decoration: none;
        font-weight: 400;
    }
    .footer a:hover {
        color: #ccc;
    }
    .social-icons {
        display: flex;
        gap: 12px;
        margin-top: 15px;
    }
    .social-icons a {
        width: 40px;
        height: 40px;
        display: flex;
        align-items: center;
        justify-content: center;
        background: rgba(255, 255, 255, 0.2);
        border-radius: 5px;
        font-size: 20px;
        color: white;
        transition: background 0.3s;
    }
    .social-icons a:hover {
        background: rgba(255, 255, 255, 0.4);
    }
    .gallery img {
        width: 70px;
        height: 70px;
        object-fit: cover;
        margin: 4px;
        border-radius: 5px;
    }
    .footer h5, .footer h4 {
        font-weight: bold;
        margin-bottom: 20px;
    }
    .contact-info p {
        margin: 8px 0;
    }
</style>
</head>
<body>
<footer class="footer text-white">
    <div class="container">
        <div class="row gy-4">
            <!-- Logo & Description -->
            <div class="col-md-3 pe-4">
                <div class="d-flex align-items-center mb-3">
                    <img src="images/tour.jpg" alt="Logo" width="60" class="me-2">
                    <h4 class="mb-0">BookYour TripKnow</h4>
                </div>
                <p>The Tours and Travels Management System provides a platform for users to explore destinations, compare tour packages, and make hassle-free bookings. It supports various travel types like holidays, business trips, and weekend getaways.</p>
                <div class="social-icons">
                    <a href="#"><i class="fa-brands fa-facebook-f"></i></a>
                    <a href="#"><i class="fa-brands fa-instagram"></i></a>
                    <a href="#"><i class="fa-brands fa-pinterest"></i></a>
                    <a href="#"><i class="fa-brands fa-twitter"></i></a>
                </div>
            </div>

            <!-- Links -->
            <!-- Links -->
<div class="col-md-3">
    <h5 class="ms-5">Links</h5>
    <div class="d-flex flex-column ms-5">
        <a href="Aboutus.jsp" class="mb-2">About Us</a>
        <a href="PhotoGallery.jsp" class="mb-2">Our Gallery</a>
        <a href="viewPlaces.jsp" class="mb-2">Places</a>
        <a href="viewVehcles1.jsp" class="mb-2">View-Vehicles</a>
        <a href="viewStay1.jsp" class="mb-2">Accommodation</a>
        <a href="viewGuide1.jsp" class="mb-2">Guide Service</a>
        <a href="tourPackages.jsp" class="mb-2">Tourism Packages</a>
        
    </div>
</div>
            

            <!-- Contact Info -->
            <div class="col-md-3">
                <h5>Contact</h5>
                <div class="contact-info">
                    <p><i class="fas fa-phone me-2"></i>666-888-0000</p>
                    <p><i class="fas fa-envelope me-2"></i>needhelp@company.com</p>
                    <p><i class="fas fa-map-marker-alt me-2"></i>66 Brooklyn Golden Street Line, Bangalore</p>
                </div>
            </div>

            <!-- Gallery -->
            <div class="col-md-3">
                <h5>Gallery</h5>
                <div class="gallery d-flex flex-wrap">
                    <img src="images1/img1.jpg">
                    <img src="images1/img6.jpg">
                    <img src="images1/img2.jpg">
                    <img src="images1/img3.jpg">
                    <img src="images1/img5.jpg">
                    <img src="images1/img4.jpg">
                </div>
            </div>
        </div>
    </div>
</footer>

<!-- Bootstrap JS Bundle -->
</body>
</html>
