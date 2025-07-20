<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="in.tourstravels.dto.review" %>
<%@ page import="in.tourstravels.dao.CustomerDAO" %>
<%@ page import="in.tourstravels.dao.CustomerDAOImpl" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Customer Reviews</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        h2 {
            color: #333;
            font-weight: 600;
            margin-top: 40px;
            margin-bottom: 30px;
        }

        .table th {
            background-color: #343a40;
            color: white;
        }

        .no-reviews {
            text-align: center;
            margin-top: 50px;
            font-size: 1.2em;
            color: #6c757d;
        }

        .rating-stars {
            color: #ffc107;
            font-size: 1.1rem;
        }

        .table td {
            vertical-align: middle;
        }
        .back{
        float:right;
        margin-bottom:10px;
       
        }
    </style>
</head>
<body>

<%@ include file="header1.jsp" %>

<div class="container">
    <h2 class="text-center">Customer Reviews</h2>

    <%
        CustomerDAO dao = new CustomerDAOImpl();
        List<review> reviews = null;

        try {
            reviews = dao.getAllReviews(); // You need to implement this method in DAO
        } catch (Exception e) {
            out.println("<div class='alert alert-danger'>Unable to load reviews. Check logs.</div>");
            e.printStackTrace();
        }
    %>
 <div class="back">
        <a href="dashboard.jsp" class="btn btn-primary">Back</a>
    </div>
    <table class="table table-bordered table-striped">
        <thead>
            <tr>
                <th>Review ID</th>
                <th>Customer_Id</th>
                <th>Name</th>
                <th>Email</th>
                <th>Rating</th>
                <th>Message</th>
                <th>Date</th>
            </tr>
        </thead>
        <tbody>
            <%
                if (reviews != null && !reviews.isEmpty()) {
                    for (review r : reviews) {
            %>
            <tr>
                <td><%= r.getReview_id() %></td>
                <td><%= r.getCustomer_id() %></td>
                <td><%= r.getUname() %></td>
                <td><%= r.getEmail() %></td>
                <td><%= r.getRating() %></td>
                    
                       
                    </div>
                </td>
                <td><%= r.getMessage() %></td>
                <td><%= r.getDate() %></td>
            </tr>
            <%
                    }
                } else {
            %>
            <tr>
                <td colspan="6" class="text-center no-reviews">No reviews submitted yet.</td>
            </tr>
            <%
                }
            %>
        </tbody>
    </table>
</div>

<%@ include file="footer.jsp" %>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
