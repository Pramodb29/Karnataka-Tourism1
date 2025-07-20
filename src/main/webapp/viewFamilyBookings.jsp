<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.ArrayList"%>
<%@page import="in.tourstravels.dto.users"%>
<%@page import="in.tourstravels.dto.booking1"%>
<%@page import="in.tourstravels.dao.Booking1DAO"%>
<%@page import="in.tourstravels.dao.Booking1DAOImpl"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Manage Bookings</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">

<style>
    body {
        background-color: #f8f9fa;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }

    table {
        margin-left: -45px;
        marrgin-top:50px;
    }

    h2 {
        color: black;
        font-weight: 600;
    }

    .table-dark th {
        background-color: #343a40;
        color: white;
    }

    .table img {
        width: 90px;
        height: 60px;
        object-fit: cover;
        border-radius: 5px;
    }

    .no-bookings {
        text-align: center;
        margin-top: 50px;
        font-size: 1.2em;
        color: #6c757d;
    }
    
    	 .back{
        float:right;
        margin-bottom:20px;
        margin-right:-80px;
        margin-top:-40px
       
        }
    .status-booked { background-color: #28a745; color: white; padding: .3em .6em; border-radius: .25rem; }
    .status-cancelled { background-color: #dc3545; color: white; padding: .3em .6em; border-radius: .25rem; }
    .status-pending { background-color: #ffc107; color: #343a40; padding: .3em .6em; border-radius: .25rem; }
</style>
</head>

<body>
<%@ include file="header1.jsp" %>

<div class="container mt-5">
    <h2 class="text-center mb-4">Manage Bookings</h2>

    <%
        users currentUser = (users) session.getAttribute("users");
        if (currentUser == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        Booking1DAO bdao = null;
        ArrayList<booking1> userBookings = new ArrayList<>();

        try {
            bdao = new Booking1DAOImpl();
            userBookings = bdao.getallBooking1info(currentUser.getCid());
        } catch (Exception e) {
            System.err.println("Error fetching bookings in JSP: " + e.getMessage());
            e.printStackTrace();
            out.println("<div class='alert alert-danger'>Error loading bookings. Please check server logs for details.</div>");
        }
    %>
 <div class="back">
        <a href="dashboard.jsp" class="btn btn-primary" style="margin-right:30px;">Back</a>
    </div>
    <table class="table table-striped table-bordered">
        <thead class="table-dark">
            <tr>
                <th>Booking ID</th>
                <th>User_ID</th>
                <th>Tourist Name</th>
                <th>Package Name</th>
                <th>Image</th>
                <th>Persons</th>
                <th>Total Price</th>
                <th>Payment Mode</th>
                <th>Status</th>
                <th>Duration (Days)</th>
                <th>Travel Date</th>
                <th>Mobile No</th>
                <th>Booked Date</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <%
                if (userBookings != null && !userBookings.isEmpty()) {
                    for (booking1 b : userBookings) {
            %>
            <tr>
                <td><%= b.getBooking_id01() %></td>
                <td><%= b.getCid() %></td>
                <td><%= b.getTourist_name() %></td>
                <td><%= b.getPackage_name() %></td>
                <td>
                    <img src="images4/<%= b.getP_image() %>" alt="<%= b.getP_image() %>" />
                </td>
                <td><%= b.getV_capacity() %></td>
                <td>&#8377;<%= b.getTotal_price() %></td>
                
                <td><%= b.getPay_mode() %></td>
                <td>
                    <%
                        String statusClass = "";
                        if ("Booked".equalsIgnoreCase(b.getStatus())) {
                            statusClass = "status-booked";
                        } else if ("Cancelled".equalsIgnoreCase(b.getStatus())) {
                            statusClass = "status-cancelled";
                        } else {
                            statusClass = "status-pending";
                        }
                    %>
                    <span class="<%= statusClass %>"><%= b.getStatus() %></span>
                </td>
                <td><%= b.getDuration() %></td>
                <td><%= b.getTraveldate() %>
                </td>
                <td><%= b.getPhoneno() %></td>
                <td><%= b.getBooked_date() %></td>
                <td>
                    <% if (!"Cancelled".equalsIgnoreCase(b.getStatus()) && !"Completed".equalsIgnoreCase(b.getStatus())) { %>
                        <div class="d-flex flex-column gap-1">
							<form method="post" action="UpdateFamilyBooking">
								<input type="hidden" name="bookingId"
									value="<%= b.getBooking_id01() %>">
								<button type="submit" name="action" value="completed"
									class="btn btn-success btn-sm w-100">Accept</button>
							</form>
							<form method="post" action="CancelfamilyBooking"
                        onsubmit="return confirm('Are you sure you want to cancel this booking?');">
							
								<input type="hidden" name="booking_id"
									value="<%=b.getBooking_id01()%>">
								<%-- IMPORTANT: Name is "booking_id" --%>
								<button type="submit" class="btn btn-danger btn-sm w-100">Cancel</button>
							</form>
						</div> <%
 } else {
 %>
                        <span class="btn btn-secondary btn-sm w-100 disabled">Closed</span>
                    <% } %>
                </td>
            </tr>
            <%
                    }
                } else {
            %>
            <tr>
                <td colspan="16" class="text-center no-bookings">No bookings found for your account. Start exploring our packages!</td>
            </tr>
            <%
                }
            %>
        </tbody>
    </table>
</div>

<%@ include file="footer.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>


</body>
</html>