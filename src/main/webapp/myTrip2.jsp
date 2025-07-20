<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        margin-right:135px;
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
        width: 110%;
        margin-left: -50px;
        margin-top:30px;
       
        
    }
    .trip-card img {
        width: 300px;
        height: 400px;
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
        margin-left: 145px;
        margin-bottom: -30px;
       
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
    .cancel-btn {
        background-color: #dc3545;
        color: white;
        border: none;
        padding: 8px 14px;
        border-radius: 8px;
        cursor: pointer;
    }
    .cancel-btn:hover {
        background-color: #c82333;
    }
    .download-link, .review-link {
        display: inline-block;
        margin-top: 10px;
        padding: 8px 14px;
        border-radius: 6px;
        text-decoration: none;
        font-weight: bold;
        color: white;
    }
    .download-link {
        background-color: #28a745;
        margin-right: 10px;
    }
    .download-link:hover {
        background-color: #218838;
    }
    .review-link {
        background-color: #007bff;
    }
    .review-link:hover {
        background-color: #0056b3;
    }
   
</style>
</head>
<body>
<h2><b>My Booked Trips</b></h2>
<div class="back">
    <a href="dashboard.jsp" class="btn btn-primary" style="margin-right:0px;margin-bottom:-60px;">Back</a>
</div>

<div class="container"> <%-- CORRECT PLACEMENT OF CONTAINER --%>

<%
    try {
        con = connector.requestConnection();
        String sql = "SELECT * FROM booking1 WHERE cid = ? ORDER BY booked_date DESC";
        ps = con.prepareStatement(sql);
        ps.setInt(1, user.getCid());
        rs = ps.executeQuery();

        boolean hasTrips = false;
        while (rs.next()) {
            hasTrips = true;
            
            // FIX: RETRIEVE THE PRIMARY KEY FOR THE BOOKING1 TABLE
            // You MUST replace "id" with the actual primary key column name
            // from your booking1 database table.
            int bookingId = rs.getInt("booking_id01"); 
            
            String image = rs.getString("p_image");
            String pkg = rs.getString("package_name");
            String places = rs.getString("places");
            int v_capacity = rs.getInt("v_capacity");
            Date travel_date = rs.getDate("traveldate");
            String vehicle_name = rs.getString("vehicle_name");
            String resortname = rs.getString("resort_name");
            Date booked_date = rs.getDate("booked_date");
            int duration = rs.getInt("duration");
            String guide_name = rs.getString("guide_name");
            int total = rs.getInt("total_price");
            String status = rs.getString("status").toLowerCase();

            String displayStatus = status;
            String statusClass = "status-confirmed";
            if ("cancelled".equals(status)) {
                statusClass = "status-cancelled";
            } else if ("completed".equals(status)) {
                statusClass = "status-completed";
            }
%>
<div class="trip-card">
    <img src="images4/<%= image %>" alt="Trip Image" />
    <div class="trip-info">
        <h3><b><%= pkg %></b></h3>
        <p><strong>Places:</strong> <%= places %></p>
        <p><strong>Travel Date:</strong> <%= travel_date %></p>
        <p><strong>Duration:</strong> <%= duration %> days</p>
        <p><strong>Vehicle:</strong> <%= vehicle_name %> (Capacity: <%= v_capacity %>)</p>
        <p><strong>Resort:</strong> <%= resortname %></p>
        <p><strong>Guide:</strong> <%= guide_name %></p>
        <p><strong>Booked Date:</strong> <%= booked_date %></p>
        <p><strong>Total Price:</strong> ₹ <%= total %></p>
        <p><strong>Payment Mode: </strong>Cash</p>
        <p><strong>Status:</strong>
            <span class="status-badge <%= statusClass %>">
                <%= displayStatus.substring(0, 1).toUpperCase() + displayStatus.substring(1) %>
            </span>
        </p>
        <%
            // Logic for actions based on status
            if ("booked".equals(status)) {
            %>
               
                <form action="CancelBooking1servlet" method="post" style="margin-top:10px; display:inline-block;">
                     <input type="hidden" name="booking_id01" value="<%= bookingId %>">
                     <button type="submit" class="cancel-btn">Cancel Booking</button>
                 </form>
            <%
            } else if ("completed".equals(status)) {
            %>
                <a href="pdf1.jsp?bookingId=<%= bookingId %>" class="download-link">Download Receipt</a>
                <a href="review.jsp?bookingId=<%= bookingId %>" class="review-link">Give Ratings</a>
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
<p style="color: red;">Failed to load custom trip data. Please try again later.</p>
<%
    } finally {
        if (rs != null) try { rs.close(); } catch (Exception ignored) {}
        if (ps != null) try { ps.close(); } catch (Exception ignored) {}
        if (con != null) try { con.close(); } catch (Exception ignored) {}
    }
%>

</div> <%-- CORRECT PLACEMENT OF CONTAINER --%>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>