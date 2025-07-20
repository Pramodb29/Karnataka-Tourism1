<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@page import="java.util.ArrayList"%>
<%@page import="in.tourstravels.dto.stay"%>
<%@page import="in.tourstravels.dao.StayDAO"%>
<%@page import="in.tourstravels.dao.StayDAOImpl"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>View Stays</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">
    
    <style>
h1 {
    background-color: #976f25e3;
    color: white;
    padding: 30px;
    text-align: center;
    margin: 0;
    font-weight: bold;
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
    min-height: 400px;
    width:200px;
    display: flex;
    flex-direction: column;
    overflow: hidden;
    transition: transform 0.2s ease-in-out, box-shadow 0.2s ease-in-out;
    width: 350px;
}
.product-card:hover {
    transform: translateY(-5px);
    box-shadow: 0 8px 16px rgba(0,0,0,0.2);
}
.product-card img {
    width: 95%;
    height: 250px;
    object-fit: cover;
    border-radius: 8px;
    margin: 10px auto 0 auto;
}
.content-wrapper {
    padding: 20px;
    display: flex;
    flex-direction: column;
    flex-grow: 1;
}
.details-list {
    list-style: none;
    padding-left: 0;
    margin-bottom: 10px;
    font-size: 1em;
    color: #555;
}
.details-list li {
    margin-bottom: 8px;
    position: relative;
    padding-left: 25px;
 
}
.details-list li::before {
    content: '•';
    color: #28a745;
    position: absolute;
    left: 0;
    font-weight: bold;
    font-size: 1.3em;
}
.no-products {
    text-align: center;
    font-size: 1.5em;
    color: #666;
    margin-top: 50px;
    width: 100%;
}
   .buttons1 .btn {
        transition: background-color 0.3s ease, color 0.3s ease;
    }

    .buttons1 .btn:hover {
        opacity: 0.9;
        transform: scale(1.02);
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
        color:black;
    }

</style>
    
    
</head>
<body>

<%@ include file="header1.jsp" %>
<h1>View – Stays</h1>

<div class="product-container">
<%
    StayDAO pdao = new StayDAOImpl();
    ArrayList<stay> al = pdao.getallStayinfo();

    if (al != null && !al.isEmpty()) {
        for (stay s : al) {
%>
    <div class="product-card">
        <img src="images4/<%= s.getResort_img() %>" />
        <div class="content-wrapper">
            <ul class="details-list">
                <li><b>Resort Name:</b> <%= s.getResort_name() %></li>                        
                <li><b>Location: </b> <%= s.getLocation() %></li>
                 <li><b>Cost per Day: </b> <%= s.getCost_per_day() %>rs/person</li>
                  <li><b>Food and Snacks: </b> <%= s.getFood_snacks() %></li>
                   
            </ul>
            
            
            <div class="buttons1">
            <form action="updateStay.jsp?pid=<%= s.getStay_id() %>" method="post">
                    <input type="hidden" name="pid" value="<%= s.getStay_id() %>" />
                    <button type="submit" class="btn" style="background-color:blue;color:white;width:100%;">Update</button>
                </form>
                
                  <form action="addStayAction" method="post" onsubmit="return confirm('Are you sure you want to delete this stay?');">
                    <input type="hidden" name="action" value="delete" /> 
                    <input type="hidden" name="p_id" value="<%= s.getStay_id() %>" />
                    <button type="submit" class="btn" id="btn1"  style="background-color:#971d1dc9;color:white;color:white;width:100%;margin-top:10px;">Delete</button>
                </form> 
                
                <form action="familyPackages.jsp" method="get">
                    <button type="submit" class="btn back-button" style="background-color:grey;color:white;color:white;width:100%;margin-top:10px;">Back</button>
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