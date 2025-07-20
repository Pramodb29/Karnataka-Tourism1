<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="in.tourstravels.dto.users" %>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <title>ToursTravels Header</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-mQ93xN6+zTQ4Zw6KtI2pHRY4OaCEk36zI4eYtvH6uwGbFk77J3bWhNRiKtCkVpWZ" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">


    <style>
.navbar {
	background-color: #f4f8f4;
	box-shadow: 0 2px 6px rgba(0, 0, 0, 0.08);
	font-family: 'Segoe UI', sans-serif;
	padding: 15px 0;

	
}

.navbar-brand {
	font-weight: bold;
	color: #2e7d32 !important;
	font-size: 1.5rem;
	display: flex;
	align-items: center;
	gap: 10px;
}

.navbar-brand img {
	width: 60px;
	border-radius: 30px;
	height: 50px;
	margin-left: -50px;
}

.navbar-nav .nav-link {
	font-weight: 500;
	color: #333;
	margin-right: 15px;
	transition: color 0.3s;
}

.navbar-nav .nav-link:hover {
	color: #2e7d32;
}

.dropdown-menu {
	border-radius: 10px;
	box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
	background-color: white;
	
}

.dropdown-item {
	color: #333;
}

.dropdown-item:hover {
	background-color: #eaf5ea;
	color: #2e7d32;
	
}

.navbar-toggler {
	border-color: rgba(0, 0, 0, 0.1);
}

.profile-dropdown {
	margin-left: 10px;
}

@media ( min-width : 992px) {
	.navbar-expand-lg .navbar-collapse {
		display: flex !important;
		flex-basis: auto;
		margin-right: -80px;
	}
}
</style>
</head>
<body>
<%
    users u = (users) session.getAttribute("users");
    boolean isLoggedIn = (u != null);
    boolean isAdmin = isLoggedIn && u.getCid() == 1;
%>
<nav class="navbar navbar-expand-lg navbar-light bg-light shadow-sm">
    <div class="container">
        <a class="navbar-brand" href="<%= isLoggedIn ? "dashboard.jsp" : "Home.jsp" %>">
            <img src="images/tour.jpg" alt="travels Logo" width="50">
            <span class="ms-2"><i>BookYourTrip</i></span>
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto align-items-center">

                <li class="nav-item">
                    <a class="nav-link fw-bold" href="dashboard.jsp">Home</a>
                </li>

                <% if (!isLoggedIn) { %>
                    <li class="nav-item"><a class="nav-link" href="login.jsp">Login</a></li>
                    <li class="nav-item"><a class="nav-link" href="signup.jsp">Register</a></li>
                    <li class="nav-item"><a class="nav-link" href="Aboutus.jsp">About Us?</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">Contact Us</a></li>

                <% } else if (isAdmin) { %>
                    <li class="nav-item"><a class="nav-link" href="adminDashboard.jsp">Dashboard</a></li>
                    <li class="nav-item"><a class="nav-link" href="viewBookedTrip.jsp">Booked Trips</a></li>
                    <li class="nav-item"><a class="nav-link" href="viewReview.jsp">ViewReviews</a></li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle d-flex align-items-center" href="#" id="navbarProfileDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            <i class="fa-solid fa-user-circle me-2" style="font-size: 20px;"></i>
                            <%= u.getFname() %>
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarProfileDropdown">
                            <li><a class="dropdown-item" href="profile.jsp">My Profile</a></li>
                              
                            <li><a class="dropdown-item" href="logout.jsp">Logout</a></li>
                           

                        </ul>
                    </li>

                <% } else { %>
                    <li class="nav-item"><a class="nav-link" href="Aboutus.jsp">About</a></li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Our Activities
                        </a>
                        <ul class="dropdown-menu">
                         <li><a class="dropdown-item" href="tourPackages.jsp">Tourism Packages</a></li>
                          
                            <li><a class="dropdown-item" href="PhotoGallery.jsp">Photo Gallery</a></li>
                            <li><a class="dropdown-item" href="wonders.jsp"> Seven Wonders</a></li>
                        </ul>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Tourism
                        </a>
                        <ul class="dropdown-menu">
                         
                          <li><a class="dropdown-item" href="viewPlaces.jsp">View Places</a></li>
                            <li><a class="dropdown-item" href="viewVehcles1.jsp">View Vehicles</a></li>
                            <li><a class="dropdown-item" href="viewStay1.jsp">Accommodation</a></li>
                            <li><a class="dropdown-item" href="viewGuide1.jsp">Guide Service</a></li>
                             <li><a class="dropdown-item" href="myTrip2.jsp">My Bookings</a></li>
                        </ul>
                    </li>

                    <li class="nav-item"><a class="nav-link" href="myTrip.jsp">My Trips</a></li>
                    <li class="nav-item"><a class="nav-link" href="contact.jsp">Contact</a></li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle d-flex align-items-center" href="#" id="navbarProfileDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            <i class="fa-solid fa-user-circle me-2" style="font-size: 20px;"></i>
                            <%= u.getFname() %>
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarProfileDropdown">
                            <li><a class="dropdown-item" href="profile.jsp">My Profile</a></li>
                            <li><a class="dropdown-item" href="viewReview.jsp">Reviews</a></li>
                            <li><a class="dropdown-item" href="logout.jsp">Logout</a></li>
                        </ul>
                    </li>
                <% } %>
            </ul>
        </div>
    </div>
</nav>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-VRjE7nt98CkQnZzuw4nlPXf5ph2OydK6JZgZNUcQZDzA6BpAGjF2b7rE3L+dyO9g" crossorigin="anonymous"></script>


</body>
</html>