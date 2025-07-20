<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%-- Corrected import assuming 'Connector' class is in 'in.tourstravels.connection' --%>
    <%@ page import="java.sql.*, in.tourstravels.connection.connector, in.tourstravels.dto.users" %>

    <%
    users user = (users) session.getAttribute("users");
    if (user == null) {
        response.sendRedirect("login.jsp");
        return;
    }

    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Trips</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            background: #eef1f4;
            font-family: 'Segoe UI', sans-serif;
        }
        .container {
            width: 90%;
            max-width: 1000px;
            margin: 50px auto;
        }
        .back {
            text-align: right;
            padding: 10px;
        }
        .trip-card {
            background: white;
            border-radius: 15px;
            box-shadow: 0 6px 12px rgba(0,0,0,0.1);
            padding: 20px;
            margin-bottom: 20px;
            display: flex;
            align-items: center;
            gap: 50px;
            margin-left:130px;
            width:80%;
        }
        .trip-card img {
            width: 300px;
            height: 330px;
            object-fit: cover;
            border-radius: 10px;
        }
        .trip-info {
            flex: 1;
        }
        .trip-info h3 {
            margin: 0;
            color: #2e7d32;
        }
        .trip-info p {
            margin: 5px 0;
        }
        h2 {
        margin-top: 50px;
        margin-left: 125px;
        margin-bottom: -20px;
        }
        .cancel-btn {
            background-color: #dc3545;
            color: white;
            border: none;
            padding: 8px 14px;
            border-radius: 6px;
            cursor: pointer;
            font-weight: bold;
        }
        .cancel-btn:hover {
            background-color: #c82333;
        }
        .status-badge {
            padding: 4px 10px;
            border-radius: 20px;
            font-size: 0.9em;
            font-weight: bold;
        }
        .status-confirmed {
            background-color: #d4edda;
            color: #155724;
        }
        .status-cancelled {
            background-color: #f8d7da;
            color: #721c24;
        }
        .status-completed {
            background-color: #d1ecf1;
            color: #0c5460;
        }
        .back{
        margin-right:135px;
        }
        .download-link {
            display: inline-block;
            margin-top: 10px;
            padding: 8px 14px;
            background-color: #28a745; /* Green for download button */
            color: white;
            border-radius: 6px;
            text-decoration: none;
            font-weight: bold;
            margin-right: 10px; /* Added spacing */
        }
        .download-link:hover {
            background-color: #218838;
            color: white; /* Keep color white on hover */
        }
        .review-link {
            display: inline-block;
            margin-top: 10px;
            padding: 8px 14px;
            background-color: #007bff; /* Blue for review button */
            color: white;
            border-radius: 6px;
            text-decoration: none;
            font-weight: bold;
        }
        .review-link:hover {
            background-color: #0056b3;
            color: white;
        }
    </style>
</head>
<body>
 <h2><b>My Booked Trips</b></h2>
    <div class="back">
        <a href="dashboard.jsp" class="btn btn-primary">Back</a>
    </div>
<%
    try {

        con = connector.requestConnection();
        String sql = "SELECT * FROM booking WHERE cid = ? ORDER BY booked_date DESC";
        ps = con.prepareStatement(sql);

        ps.setInt(1, user.getCid());
        rs = ps.executeQuery();

        boolean hasTrips = false;

        while (rs.next()) {
            hasTrips = true;
            int bookingId = rs.getInt("booking_id");
            String itemType = rs.getString("package_name");
            String itemName = rs.getString("places_visit");
            String imageUrl = rs.getString("package_img");
            int numPersons = rs.getInt("num_person");
            double totalPrice = rs.getDouble("total_price");
            String paymentMode = rs.getString("pay_mode");
            String status = rs.getString("status").toLowerCase();

            String displayStatus = status;
            String statusClass = "status-confirmed"; // Default for booked

            if ("cancelled".equals(status)) {
                statusClass = "status-cancelled";
            } else if ("completed".equals(status)) {
                statusClass = "status-completed";
            }
            // For "booked" status, statusClass remains "status-confirmed"
%>
 <div class="trip-card">
        <img src="<%= imageUrl %>" alt="Trip Image" />
        <div class="trip-info">
            <h3><b><%= itemType %></b> </h3>
            <p><strong>Places to Visit:</strong> <%= itemName %>
            <p><strong>Number of Persons:</strong> <%= numPersons %></p>

           <p><strong>From Date:</strong> <%= rs.getDate("from_date") %></p>
            <p><strong>To Date:</strong> <%= rs.getDate("to_date") %></p>
            <p><strong>Booked Date:</strong> <%= rs.getDate("booked_date") %></p>
            <p><strong>Number of Days:</strong> <%= rs.getInt("no_of_days") %></p>


            <p><strong>Total Price:</strong> ₹ <%= totalPrice %></p>
            <p><strong>Payment Mode:</strong> <%= paymentMode %></p>
            <p><strong>Status:</strong>
                <span class="status-badge <%= statusClass %>">
                    <%= displayStatus.substring(0, 1).toUpperCase() + displayStatus.substring(1) %>
                </span>
            </p>

            <%
            // Logic for actions based on status
            if ("booked".equals(status)) {
            %>
               
                <form action="cancelbookingservlet" method="post" style="margin-top:10px; display:inline-block;">
                     <input type="hidden" name="booking_id" value="<%= bookingId %>">
                     <button type="submit" class="cancel-btn">Cancel Booking</button>
                 </form>
            <%
            } else if ("completed".equals(status)) {
            %>
                <a href="pdf.jsp?bookingId=<%= bookingId %>" class="download-link">Download Receipt</a>
                <a href="review.jsp?bookingId=<%= bookingId %>" class="review-link">Give Ratings</a>
            <%
            } else if ("cancelled".equals(status)) {
            %>
                <%
            }
            %>
        </div>
    </div>

<%
        }

        if (!hasTrips) {
%>
    <p style="margin-left:200px;font-size:25px;"><b>You have not booked any trips yet.</b></p>
<%
        }

    } catch (Exception e) {
        e.printStackTrace();
%>
    <p style="color: red;">Failed to load trip data. Please try again later.</p>
<%
    } finally {
        if (rs != null) try { rs.close(); } catch (Exception ignored) {}
        if (ps != null) try { ps.close(); } catch (Exception ignored) {}
        if (con != null) try { con.close(); } catch (Exception ignored) {}
    }
%>

</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>


</body>
</html>