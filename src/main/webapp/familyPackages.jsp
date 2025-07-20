<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<title>Family Packages</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">
    
        <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f4f4;
            margin: 0;
            padding: 0;
        }
       
        nav {
            background-color: #2d572c;
            padding: 40px 20px;
            display: flex;
            justify-content: center;
            gap: 100px;
        }
        nav a {
            color: white;
            text-decoration: none;
            font-weight: bold;
            font-size: 16px;
        }
        nav a:hover {
            text-decoration: underline;
        }
        h1 {
            color: #2d572c;
            margin: 30px 0;
            text-align: center;
        }
        .dashboard {
            display: flex;
            justify-content: center;
            gap: 100px;
            padding: 20px;
        }
        .card {
            background-color: white;
            padding: 20px;
            width: 250px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            transition: transform 0.2s ease-in-out;
            text-align: center;
            cursor: pointer;
        }
        .card:hover {
            transform: scale(1.05);
        }
        .card h2 {
            margin-bottom: 10px;
            color: #333;
        }
        .card a {
            text-decoration: none;
            color: white;
            background-color: green;
            padding: 10px 20px;
            border-radius: 8px;
            display: inline-block;
            margin: 5px;
        }
        footer{
        margin-top: 50px;
        }
    </style>
    
</head>
<body>
<%@ include file="header1.jsp" %>

<div class="dashboard">
    <div class="card">
    <img src="images3/place.jpg" height="150px" width="207px">
        <h2>Places</h2>
        <p>Add and manage Places details.</p>
        <a href="addPlaces.jsp">Add Places</a>
          <a href="viewfamilyPackages.jsp" style="background-color:blue;">View Places</a>
        
    </div>
    <div class="card">
    <img src="images3/vehicl.png" height="150px" width="207px">
        <h2>Vehicle</h2>
        <p>Add and manage vehicle options.</p>
        <a href="addVehicle.jsp">Add Vehicle</a>
           <a href="viewVehicle.jsp" style="background-color:blue;">View Vehicle</a>
        
    </div>
    <div class="card">
    <img src="images3/stay.jpeg"height="150px" width="207px">
        
        <h2>Stay</h2>
        <p>View and manage stay packages.</p>
        <a href="addStay.jsp">Add Stay</a>
         <a href="viewStay.jsp" style="background-color:blue;">View Stay</a>
        
    </div>
    <div class="card">
    <img src="images3/guide.jpg"height="170px" width="207px">
        
        <h2>Guide</h2>
        <p>Add and manage Guides.</p>
        <a href="addGuide.jsp">Add Guides</a>
        <a href="viewGuide.jsp" style="background-color:blue;">View Guides</a>
        
    </div>
</div>


<%@ include file="footer.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>