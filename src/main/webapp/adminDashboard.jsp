<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<title>Admin Dashboard - Tours & Travels</title>

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
         background-color: #976f25e3;
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
   			
            color: red;
            margin: 30px 0;
            text-align: center;
            font-weight:bold;
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
            width: 350px;
            height: 500px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            transition: transform 0.2s ease-in-out;
            text-align: center;
            cursor: pointer;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            align-items: center;
            margin-top:20px;
        }
          
        .card:hover {
            transform: scale(1.05);
            color:black;
        }
        .card h2 {
            margin-bottom: 10px;
            color: #333;
        }
        .card img {
            width: 330px;
            height: 200px;
            flex-grow: 1;
            
            margin-bottom: 15px;
        }
        .card p {
            flex-grow: 0;
            margin-bottom: 15px;
        }
        .card a {
            text-decoration: none;
            color: white;
            background-color: green;
            padding: 10px 20px;
            border-radius: 8px;
            display: inline-block;
            margin: 5px;
            flex-shrink: 0;
        }
        .card a:hover {
            
            color:black;
        }
    
    </style>
</head>
<body>

<%@ include file="header1.jsp" %>
<h1>Tours and Travels Dashboard</h1>
<nav>
    <a href="personalPackage.jsp">Add-Individual-Packages</a>
    <a href="familyPackages.jsp">Add-Family-Packages</a>
   
</nav>



<div class="dashboard">

<div class="card">
    <img src="images1/view.jpg" alt="Tour Package Advertisement">
        
        <h2>Individual Packages</h2>
        <p>View and manage tour packages.</p>
        <a href="viewPackages.jsp">View Personal Packages</a>
        <a href="dashboard.jsp" style="background-color:blue;">Back To The DashBoard</a>
        
    </div>
    <div class="card">
    <img src="images3/family.jpg" alt="Tour Package Advertisement">
        
        <h2>Family Packages</h2>
        <p>View and manage tour packages.</p>
        <a href="familyPackages.jsp">View Family Packages</a>
        <a href="dashboard.jsp" style="background-color:blue;">Back To The DashBoard</a>
        
    </div>

</div>


<%@ include file="footer.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>