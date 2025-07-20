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
<title>Tourisem Packages</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">
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
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            padding: 0;
            text-align: left;
            min-height: 550px;
            display: flex;
            flex-direction: column;
            overflow: hidden;
            transition: transform 0.2s ease-in-out, box-shadow 0.2s ease-in-out;
            width: 530px;
        }

        .product-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 16px rgba(0,0,0,0.2);
        }

        .product-card img {
            width: 95%;
            height: 250px; /* Increased image height to fill more space */
            object-fit: cover;
            border-radius: 8px 8px 0 0;
            margin-bottom: 0;
            margin:10px 10px;
        }

        .product-card .content-wrapper {
            padding: 20px;
            display: flex;
            flex-direction: column;
            flex-grow: 1;
            justify-content: space-between;
        }
		.content-wrapper{
		margin-top:-10px;
		}
        .product-card h3 {
            color: #333;
            font-size: 1.8em; /* Slightly larger package name */
            margin-top: 0;
            margin-bottom: 10px;
            font-weight: 700;
            text-align: center;
        }

        .product-card .price {
            font-size: 1.6em; /* Slightly larger price */
            color: #007bff;
            font-weight: 600;
            margin-bottom: 15px;
            text-align: center;
        }
        
        .product-card .details-list {
            list-style: none;
            padding-left: 0;
            margin-bottom: 20px;
            font-size: 1em; /* Slightly larger text for details */
            color: #555;
            flex-grow: 1;
        }

        .product-card .details-list li {
            margin-bottom: 8px; /* More space between list items */
            position: relative;
            padding-left: 25px; /* More space for icon */
        }
        
        .product-card .details-list li::before {
            content: '•';
            color: #28a745;
            position: absolute;
            left: 0;
            font-weight: bold;
            font-size: 1.3em; /* Slightly larger bullet */
            line-height: 1;
        }

        .product-card .button-container {
            display: flex;
            flex-direction: row;
            justify-content: space-around;
            gap: 20px; /* More space between buttons */
            width: 100%;
            margin-top: 15px;
        }

        .product-card .btn {
            background-color:#22a24edb;
            color: white;
            border: none;
            padding: 12px 20px; /* Larger buttons */
            border-radius: 5px;
            cursor: pointer;
            font-size: 1em;
            transition: background-color 0.2s ease;
            text-decoration: none;
            flex: 1;
            max-width: 120px; /* Adjusted max width for larger buttons */
        }

        .product-card .btn:hover {
            color: black;
        }

        .product-card form[action="deleteProduct"] .btn {
            background-color: #dc3545;
        }
        .product-card form[action="deleteProduct"] .btn:hover {
            background-color: #c82333;
        }
        
        .product-card form {
            flex-grow: 1;
            display: flex;
            
        }

        .no-products {
            text-align: center;
            font-size: 1.5em;
            color: #666;
            margin-top: 50px;
            width: 100%;
        }
      

	#btn1{
	margin-left: 90px;
	background-color: #bb3535cc;
	} 
	
</style>
</head>
<body>
<%@ include file="header1.jsp" %>
<h1>Tourism – Packages</h1>


<div class="product-container">
 <%
        PackageDAO pdao = new PackageDAOImpl();
        ArrayList<packages> al = pdao.getallPackagesinfo();

        if (al != null && !al.isEmpty()) {
            for (packages s : al) {
    %>
 <div class="product-card">
                    <img src="images/<%= s.getImage_url() %>" alt="<%= s.getPname() %>" />
                    <div class="content-wrapper">
                        <h3><%= s.getPname() %></h3>
                        <p class="price">&#8377; <%= String.format("%.2f", s.getPrice()) %>/per person</p>
                        
                        <ul class="details-list">
                            <li>Pickup: <%= s.getPickup() %></li>
                           
                            <li>Places: <%= s.getPlaces() %></li>
                            <li>Duration: <%= s.getDuration() %> Days</li>
                            <li>Food & Stay: <%= s.getStayandfood() %></li>
                            <li>Slots: <%= s.getSlots() %></li>
                            <li>Vehicle: <%= s.getV_number() %></li>
                            <li>Manager Contact: <%= s.getManagerNo() %></li>
                        </ul>

                        <div class="button-container">
                            <form action="updatepackage.jsp?pid=<%= s.getPid() %>" method="post">
                                <input type="hidden" name="pid" value="<%= s.getPid() %>" />
                                <button type="submit" class="btn" style="background-color:blue;">Update</button>
                            </form>
                            <form action="adminDashboard.jsp" method="get">
                                <button type="submit" class="btn back-button" style="margin-left:100px;">Back</button>
                            </form>
                            <form action="packageAction" method="post" onsubmit="return confirm('Are you sure you want to delete this package?');">
                                <input type="hidden" name="action" value="delete" /> 
                                <input type="hidden" name="p_id" value="<%= s.getPid() %>" />
                                <button type="submit" class="btn" id="btn1">Delete</button>
                            </form> 
                            
                        </div>
                    </div>
                </div>
    <%
            }
        } else {
    %>
            <p class="no-products">No packages found.</p>
    <%
        }
    %>
</div>

<%@ include file="footer.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>