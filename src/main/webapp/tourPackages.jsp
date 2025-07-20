<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="in.tourstravels.dto.packages"%>
<%@page import="in.tourstravels.dao.PackageDAO"%>
<%@page import="in.tourstravels.dao.PackageDAOImpl"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">
<title>Karnataka Tour Packages</title>
<style>
 body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f2f6f5;
            margin: 0;
            padding: 0;
        }
        h1 {
            background-color: #976f25e3;
            color: white;
            padding: 30px;
            text-align: center;
            margin: 0;
            font-weight:bold;
            box-shadow: 0 4px 8px rgba(0,0,0,0.2);
            margin-bottom: 30px;
        }



.product-container {
	display: flex;
	flex-wrap: wrap;
	justify-content: center;
	gap: 80px;
	padding: 20px;
}

.product-card {
	background-color: white;
	border-radius: 8px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	padding: 0;
	text-align: left;
	height: 730px;
	display: flex;
	flex-direction: column;
	overflow: hidden;
	transition: transform 0.2s ease-in-out, box-shadow 0.2s ease-in-out;
	width: 530px;
}

.product-card:hover {
	transform: translateY(-5px);
	box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
}

.product-card img {
	width: 95%;
	height: 250px;
	object-fit: cover;
	border-radius: 8px 8px 0 0;
	margin-bottom: 0;
	margin: 10px 13px;
}

.product-card .content-wrapper {
	padding: 20px;
	display: flex;
	flex-direction: column;
	flex-grow: 1;
	justify-content: space-between;
}

.content-wrapper {
	margin-top: -10px;
}

.product-card h3 {
	color: #333;
	font-size: 1.8em;
	margin-top: 0;
	margin-bottom: 10px;
	font-weight: 700;
	text-align: center;
}

.product-card .price {
	font-size: 1.6em;
	color: #007bff;
	font-weight: 600;
	margin-bottom: 15px;
	text-align: center;
}

.product-card .details-list {
	list-style: none;
	padding-left: 0;
	margin-bottom: 20px;
	font-size: 1em;
	color: #555;
	flex-grow: 1;
}

.product-card .details-list li {
	margin-bottom: 8px;
	position: relative;
	padding-left: 25px;
}

.product-card .details-list li::before {
	content: '•';
	color: #28a745;
	position: absolute;
	left: 0;
	font-weight: bold;
	font-size: 1.3em;
	line-height: 1;
}

.marquee-container {
	background-color: #f0f0f0;
	padding: 10px 0;
	margin-bottom: 20px;
	border-bottom: 1px solid #ddd;
	border-top: 1px solid #ddd;
	margin-top: -30px;
}

.marquee-text {
	color: #555;
	font-size: 1.1em;
	font-weight: bold;
}

.no-products {
	text-align: center;
	font-size: 1.5em;
	color: #666;
	margin-top: 50px;
	width: 100%;
}

.user-button-container {
	display: flex;
	justify-content: center;
	align-items: center;
	gap: 15px;
	margin-top: 20px;
	padding: 0 20px 20px 20px;
	margin-top: -40px;
}

.add-to-cart {
	background-color: #28a745;
	color: white;
	border: none;
	padding: 12px 25px;
	border-radius: 5px;
	cursor: pointer;
	font-size: 1.1em;
	transition: background-color 0.2s ease;
	text-decoration: none;
	flex-shrink: 0;
}

.add-to-cart:hover {
	background-color: #218838;
	color: white;
}

.quantity-select {
	padding: 8px 12px;
	border-radius: 5px;
	border: 1px solid #ccc;
	font-size: 1em;
	flex-shrink: 0;
	min-width: 170px;
  margin-top: -40px;
}
label {
	display: inline-block;
	margin-top: -50px;
	font-size:20px;;
}
</style>
</head>
<body>
<%@ include file="header1.jsp" %>
<h1>Karnataka Tour Packages</h1>

<div class="marquee-container">
    <marquee class="marquee-text" behavior="scroll" direction="left" scrollamount="10">
        Note: The destinations listed in each package are mandatory stops. Additional places may also be included during the tour, but only the primary locations are mentioned in the package details.
    </marquee>
</div>

<div class="product-container">
    <%
        PackageDAO pdao = new PackageDAOImpl();
        ArrayList<packages> allPackages = pdao.getallPackagesinfo();

        if (allPackages != null && !allPackages.isEmpty()) {
            for (packages s : allPackages) {
    %>
                <div class="product-card">
                    <img src="images/<%= s.getImage_url() %>" alt="<%= s.getPname() %>" />
                    <div class="content-wrapper">
                        <h3><%= s.getPname() %></h3>
                        <p class="price">&#8377; <%= String.format("%.2f", s.getPrice()) %>/per person</p>

                        <ul class="details-list">
                            <li><b>Pickup: </b><%= s.getPickup() %></li>
                          
                            <li><b>Places: </b><%= s.getPlaces() %></li>
                            <li><b>Duration: </b><%= s.getDuration() %> Days</li>
                            <li><b>Food & Stay: </b><%= s.getStayandfood() %></li>
                            <li><b>Slots: </b><%= s.getSlots() %></li>
                            <li><b>Vehicle: </b><%= s.getV_number() %></li>
                            <li><b>Manager Contact: </b><%= s.getManagerNo() %></li>
                            <li><b>Note: </b>Carry valid Governament Id proof when you came</li>
                        </ul>

                    <form action="Booking.jsp?packageName=<%= s.getPname() %>&amp;price=<%= s.getPrice() %>&amp;places=<%= s.getPlaces() %>&amp;imageurl=images/<%= s.getImage_url() %>&amp;Slots=<%= s.getSlots() %>&amp;Phoneno=<%= s.getManagerNo() %>&amp;Duration=<%= s.getDuration() %>" method="post" style="width: 100%;">
					<div class="user-button-container justify-content-between"
						style="flex-direction: column; align-items: stretch;">
						<div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 10px;">
							
						</div>
						<div
							style="display: flex; justify-content: space-between; gap: 10px;">
							<button name="bookpackage" class="add-to-cart" type="submit">Book
								Now</button>
							<a href="dashboard.jsp" class="add-to-cart"
								style="background-color: #aa3f3fd4;width:130px;text-align:center;">Back</a>
						</div>
					</div>

				</form>
                    </div>
                </div>
    <%
            }
        } else {
    %>
            <p class="no-products">No packages are currently available. Please check back later!</p>
    <%
        }
    %>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

<%@ include file="footer.jsp" %>
</body>
</html>