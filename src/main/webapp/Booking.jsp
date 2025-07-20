<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="in.tourstravels.dto.users" %>
<%@ page import="java.time.LocalDate" %>

<%
    String pname = request.getParameter("packageName");
	String price = request.getParameter("price");
    String places = request.getParameter("places");
    String image = request.getParameter("imageurl");
    String slots = request.getParameter("Slots");
    String phone = request.getParameter("Phoneno");
    String duration = request.getParameter("Duration");
    
    

    double pricePerPerson = 0;
    if (price != null && !price.isEmpty()) {
        pricePerPerson = Double.parseDouble(price);
    }

    users user = (users) session.getAttribute("users");
  /* System.out.println("Booking.jsp: User in session (from Booking.jsp): " + user); */
    if (user == null) {
        response.sendRedirect("login.jsp");
        return;
    }

    LocalDate tomorrow = LocalDate.now().plusDays(1);
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Booking Form</title>
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    
    <style>
    body {
        font-family: 'Roboto', sans-serif;
        margin: 0;
        padding: 40px 0;
        background: #f0f4f8;
        display: flex;
        justify-content: center;
    }

    .booking-form {
        width: 100%;
        max-width: 600px;
        background: #ffffff;
        padding: 40px;
        border-radius: 14px;
        box-shadow: 0 8px 20px rgba(0, 0, 0, 0.07);
        animation: fadeIn 0.6s ease-in-out;
    }

    @keyframes fadeIn {
        from { opacity: 0; transform: translateY(20px); }
        to { opacity: 1; transform: translateY(0); }
    }

    .booking-form h2 {
        text-align: center;
        color: #0277bd;
        margin-bottom: 30px;
        font-size: 28px;
        margin-top: -10px;
    }

    .booking-form img {
        width: 100%;
        height: 220px;
        object-fit: cover;
        border-radius: 10px;
        margin-bottom: 30px;
    }

    .booking-form label {
        font-weight: 600;
        margin-bottom: 6px;
        display: block;
        color: #01579b;
        font-size: 15px;
    }

    .booking-form input[type="text"],
    .booking-form input[type="number"],
    .booking-form input[type="date"],
    .booking-form select {
        width: 100%;
        padding: 12px;
        margin-bottom: 20px;
        border: 1px solid #ccc;
        border-radius: 10px;
        background-color: #f5fafd;
        font-size: 15px;
        transition: 0.3s ease;
    }

    .booking-form input:focus,
    .booking-form select:focus {
        border-color: #0288d1;
        background-color: #fff;
        outline: none;
        box-shadow: 0 0 6px rgba(2, 136, 209, 0.2);
    }

    .total-wrapper {
        display: flex;
        align-items: center;
        gap: 10px;
    }

    .total-wrapper input[type="text"] {
        flex: 1;
        background-color: #e1f5fe;
        border: none;
        color: #01579b;
        font-weight: bold;
    }

    .booking-form button {
        width: 104%;
        padding: 14px;
        background: #0288d1;
        border: none;
        border-radius: 12px;
        color: white;
        font-size: 16px;
        font-weight: bold;
        cursor: pointer;
        transition: 0.3s ease;
    }

    .booking-form button:hover {
        background: #0277bd;
        transform: scale(1.02);
    }

    .back-button { /* New style for the back button */
        width: 99%;
        padding: 14px;
        background: #6c757d; /* A neutral gray color */
        border: none;
        border-radius: 12px;
        color: white;
        font-size: 16px;
        font-weight: bold;
        cursor: pointer;
        transition: 0.3s ease;
        text-align: center;
        display: block;
        margin-top: 15px;
        text-decoration: none; 
    }

    .back-button:hover {
        background: #5a6268;
        transform: scale(1.02);
        color: white;
    }

    select option:disabled {
        color: #999;
    }

    @media (max-width: 600px) {
        .booking-form {
            padding: 25px 20px;
        }
    }
</style>


    <script>
        function updateTotalPrice() {
            const pricePerPerson = parseFloat(<%= pricePerPerson %>);
            const persons = parseInt(document.getElementById("numPersons").value) || 0;
            let total = 0;
            const itemType = "<%= pname %>";

            if (itemType === "Stay" || itemType === "Package") {
                const from = document.getElementById("fromDate").value;
                const to = document.getElementById("toDate").value;
                if (from && to) {
                    const fromDate = new Date(from);
                    const toDate = new Date(to);
                    const days = (toDate - fromDate) / (1000 * 60 * 60 * 24);
                    if (days > 0) {
                        total = pricePerPerson * persons * days;
                    } else {
                        total = 0;
                    }
                }
            } else {
                total = pricePerPerson * persons;
            }

            document.getElementById("totalPriceDisplay").value = "₹ " + total.toFixed(2);
            document.getElementById("totalPrice").value = total.toFixed(2);
        }
    </script>
</head>
<body>
<% 
    String eMessage = (String) request.getAttribute("error");  
    if (eMessage != null) { 
%>
    <%= eMessage %>
<% 
    } 
%>

<div class="booking-form">
    <h2><%= pname %> Booking</h2>
    <form action="bookingServlet" method="post">
    
    <input type="hidden" name="packageName" value="<%= pname %>" />
<input type="hidden" name="Duration" value="<%= duration %>" />
<input type="hidden" name="Slots" value="<%= slots %>" />
<input type="hidden" name="Phoneno" value="<%= phone %>" />
  <input type="hidden" name="imageURL" value="<%= image %>" />
    

        <img src="<%= image %>" alt="Selected Item Image" />

        <label>Tourist Name</label>
        <input type="text" name="touristName" value="<%= user.getFname() %>" readonly />

        <label>Places to Visit</label>
        <input type="text" name="places" value="<%= places %>" readonly />


        
        <label>Slots-Avail</label>
        <input type="text" name="slots" value="<%= slots %>" readonly />

        <label>Manager Number</label>
        <input type="number" name="phone" value="<%= phone %>" readonly />
        
        		 <label>Number of Persons</label>
        <input type="number" id="numPersons" name="numPersons" value="1" min="1" max="5" onchange="updateTotalPrice()" required />
        
        <label>Total Price</label>
        <div class="total-wrapper">
            <input type="text" id="totalPriceDisplay" value="₹ <%= pricePerPerson %>" readonly />
            <input type="hidden" name="totalPrice" id="totalPrice" value="<%= pricePerPerson %>" />
        </div>


			<%-- Booking Dates --%>
            <%-- <label>Booking Date</label>
            <input type="date" name="bookingDate" min="<%= tomorrow %>" required /> --%>
            
             <label>Duration in Days</label>
        <input type="number" name="number" value="<%= duration %>" readonly />
        
            <label>From Date</label>
            <input type="date" id="fromDate" name="fromDate" min="<%= tomorrow %>" onchange="updateTotalPrice()" required />

            <label>To Date</label>
            <input type="date" id="toDate" name="toDate" min="<%= tomorrow %>" onchange="updateTotalPrice()" required />
            
            
			<label>Payment Mode</label> <select name="paymentMode" required>
				<option value="" disabled selected>Select</option>
				<option value="Cash">Cash</option>
			</select>

        <input type="hidden" name="imageURL" value="<%= image %>" />

        <button type="submit">Confirm Booking</button>
        <a href="tourPackages.jsp" class="back-button">Back to Packages</a>
    </form>
</div>

<script>
    updateTotalPrice();
</script>
</body>
</html>





