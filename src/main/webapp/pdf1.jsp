<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*, in.tourstravels.connection.connector, in.tourstravels.dto.booking1"%>
<%@page import="in.tourstravels.dto.users"%>
<%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Booking Confirmation - TourYourTrip</title>
<link rel="stylesheet"
    href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
    crossorigin="anonymous">
<link
    href="https://fonts.googleapis.com/css?family=Lato:400,700&display=swap"
    rel="stylesheet" type="text/css">
<link
    href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,700&display=swap"
    rel="stylesheet" type="text/css">
<link
    href="https://fonts.googleapis.com/css?family=Raleway:400,700&display=swap"
    rel="stylesheet" type="text/css">
<script
    src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.2/html2pdf.bundle.js"></script>
<style>
body {
	font-family: 'Source Sans Pro', sans-serif;
	background-color: #f1f8e9;
	color: #333;
	margin: 0;
	padding: 0;
	display: flex;
	flex-direction: column;
	align-items: center; /* Center content horizontally */
	justify-content: center;
	/* Center content vertically if space allows */
	min-height: 100vh; /* Ensure it takes full viewport height */
}

.pdf-container {
	background-color: #ffffff;
	width: 750px;
	/* Slightly reduced width for better margin handling and single page */
	margin: 20px auto;
	padding: 30px;
	box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
	border-radius: 8px;
}

.header-section {
	text-align: center;
	margin-bottom: 30px;
}

.header-section img {
	max-width: 120px;
	height: auto;
	margin-bottom: 10px;
	height: 80px;
	border-radius: 50px; /* Added border-radius */
}

p {
	margin-top: 0;
	margin-bottom: 1rem;
	margin-top: -5px;
}

.header-section h2 {
	color: #2e7d32;
	font-size: 30px;
	margin: 0;
	font-weight: bold; /* Made BookYourTrip bold */
}

.booking-details-table {
	width: 90%;
	margin-left:35px;
	border-collapse: collapse;
}

.booking-details-table td {
	padding: 5px 15px;
	border-bottom: 1px solid #eee; /* Subtle line between rows */
	font-size: 1.05em;
}

.booking-details-table td:first-child {
	font-weight: bold;
	color: #555;
	width: 40%; /* Allocate width for label column */
	text-align: right;
}

.booking-details-table td:last-child {
	color: #000;
	width: 60%;
	text-align: left;
}

.booking-details-table tr:last-child td {
	border-bottom: none; /* No border for the last row */
}

.message-section {
	text-align: center;
	margin-top: 30px;
	padding-bottom: 15px;
	color: green;
	font-size: 18px;
}

.message-section p {
	margin-bottom: 5px;
}

.horizontal-line {
	border: none;
	border-top: 1px solid black;
	margin-top:-5px;
	
	width: 80%; /* Width of the line */
}

.footer-section {
	text-align: center;
	margin-top: 20px; /* Reduced margin-top slightly */
	font-size: 0.9em;
	color: #777;
}

.download-button {
	text-align: center;
	margin-bottom: 20px;
}

.download-button button {
	background-color: #007bff;
	color: white;
	border: none;
	padding: 10px 20px;
	border-radius: 5px;
	cursor: pointer;
	font-size: 16px;
}

.download-button button:hover {
	background-color: #0056b3;
}

/* Styles for responsive behavior */
@media only screen and (min-width: 720px) {
	.pdf-container {
		width: 700px;
	}
}

@media ( max-width : 720px) {
	.pdf-container {
		width: 95%;
		margin: 10px auto;
		padding: 15px;
	}
	.header-section img {
		max-width: 100px;
	}
	.header-section h2 {
		font-size: 24px;
	}
	.booking-details-table td {
		font-size: 0.9em;
		padding: 6px 10px;
	}
	.booking-details-table td:first-child {
		width: auto; /* Allow natural width */
		text-align: left;
	}
	.booking-details-table td:last-child {
		width: auto; /* Allow natural width */
		text-align: left;
	}
}
</style>
</head>
<body>
<%
    // Get bookingId from URL parameter
    String bookingIdStr = request.getParameter("bookingId");
    int bookingId = -1;
    booking1 bookingDetails = null; // DTO to hold booking data

    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    try {
        if (bookingIdStr != null && !bookingIdStr.isEmpty()) {
            bookingId = Integer.parseInt(bookingIdStr);

            con = connector.requestConnection();
            String sql = "SELECT * FROM booking1 WHERE booking_id01 = ?";
            ps = con.prepareStatement(sql);
            ps.setInt(1, bookingId);
            rs = ps.executeQuery();

            if (rs.next()) {
                bookingDetails = new booking1();
                bookingDetails.setBooking_id01(rs.getInt("booking_id01"));
                bookingDetails.setCid(rs.getInt("cid"));
                bookingDetails.setTourist_name(rs.getString("tourist_name"));
                bookingDetails.setPackage_name(rs.getString("package_name"));
                bookingDetails.setPlaces(rs.getString("places"));
                bookingDetails.setTraveldate(rs.getString("traveldate"));
                bookingDetails.setDuration(rs.getInt("duration")); // Although not used in PDF, good to retrieve
                bookingDetails.setV_capacity(rs.getInt("v_capacity"));
                bookingDetails.setTotal_price(rs.getInt("total_price"));
                bookingDetails.setPay_mode(rs.getString("pay_mode"));
                bookingDetails.setStatus(rs.getString("status"));
                bookingDetails.setPhoneno(rs.getLong("phoneno"));              
                bookingDetails.setBooked_date(rs.getString("booked_date"));
            }
        }
    } catch (NumberFormatException e) {
        System.err.println("Invalid booking ID format: " + bookingIdStr);
    } catch (SQLException e) {
        System.err.println("Database error fetching booking details: " + e.getMessage());
        e.printStackTrace();
    } catch (Exception e) {
        System.err.println("An unexpected error occurred: " + e.getMessage());
        e.printStackTrace();
    } finally {
        if (rs != null) try { rs.close(); } catch (SQLException ignored) {}
        if (ps != null) try { ps.close(); } catch (SQLException ignored) {}
        if (con != null) try { con.close(); } catch (SQLException ignored) {}
    }

    if (bookingDetails == null) {
%>
    <div class="pdf-container">
        <p style="text-align: center; color: red; font-size: 1.2em;">Booking details not found or invalid booking ID.</p>
        <p style="text-align: center;"><a href="MyBookedTrips.jsp" class="btn btn-primary">Back to My Trips</a></p>
    </div>
<%
    } else {
        // Format dates for display
        SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
        SimpleDateFormat dateTimeFormat = new SimpleDateFormat("dd-MM-yyyy HH:mm:ss");
%>
    <div class="download-button">
        <button id="downloadPdf">Download Booking Confirmation</button>
    </div>

    <div id="pdfContent" class="pdf-container">
        <div class="header-section">
            <img src="images/tour.jpg" alt="TourYourTrip Logo"> <%-- Adjust path if necessary --%>
            <h2>BookYourTrip</h2>
        </div>

        <div class="message-section">
            <p style="font-size: 1.1em; font-weight: bold; color: #2e7d32;">Booking Confirmed!</p>
            <p style="font-size: 1.0em;">Dear <%= bookingDetails.getTourist_name() %>,</p>
            <p style="font-size: 1.0em;"><b>Thank you for booking your trip with us. Here are your booking details:</b></p>
        </div>

        <table border=2 class="booking-details-table">
         <tr>
                <td style="text-align:left;">Booking ID:</td>
                <td><%= bookingDetails.getBooking_id01() %></td>
            </tr>
            <tr>
                <td style="text-align:left;">Customer ID:</td>
                <td><%= bookingDetails.getCid() %></td>
            </tr>
           
            <tr>
                <td style="text-align:left;">Tourist Name:</td>
                <td><%= bookingDetails.getTourist_name() %></td>
            </tr>
            <tr>
                <td style="text-align:left;">Package Name:</td>
                <td><%= bookingDetails.getPackage_name() %></td>
            </tr>
            <tr>
                <td style="text-align:left;">Places Visit:</td>
                <td><%= bookingDetails.getPlaces() %></td>
            </tr>
            <tr>
                <td style="text-align:left;">Travel date:</td>
                <td><%= bookingDetails.getTraveldate() %></td>
            </tr>
            <tr>
                <td style="text-align:left;">Duration (In Days):</td>
                <td><%= bookingDetails.getDuration() %></td>
            </tr>
            <tr>
                <td style="text-align:left;">Total Price:</td>
                <td>₹ <%=  bookingDetails.getTotal_price()  %></td>
            </tr>
            <tr>
                <td style="text-align:left;">Payment Mode:</td>
                <td><%= bookingDetails.getPay_mode() %></td>
            </tr>
            <tr>
                <td style="text-align:left;">Status:</td>
                <td><%= bookingDetails.getStatus().substring(0, 1).toUpperCase() + bookingDetails.getStatus().substring(1) %></td>
            </tr>
            <tr>
                <td style="text-align:left;">Phoneno:</td>
                <td><%= bookingDetails.getPhoneno() %></td>
            </tr>
          
            <tr>
                <td style="text-align:left;">Booked Date:</td>
                <td><%= bookingDetails.getBooked_date() %></td>
            </tr>
        </table>

        <div class="message-section" style="margin-top: 15px; padding-bottom: 5px;">
            <p style="font-size: 1.0em; color: #777;">Please keep this confirmation for your records.</p>
        </div>
        <hr class="horizontal-line">

        <div class="footer-section" >
            <p>If you have any questions, contact us at: support@bookyourtrip.com</p>
            <p>Office Address: Plot No.765, 8th Cross Road, M.R.C.R Extension, Govindaraja Nagar, Bengaluru-560040 (Near Hosahalli metro station)</p>
            <p>All Rights Reserved &copy; BookYourTrip <%= java.time.Year.now().getValue() %>.</p>
        </div>
    </div>

    <script>
        window.onload = function () {
            document.getElementById("downloadPdf")
                .addEventListener("click", () => {
                    const pdfContent = document.getElementById("pdfContent");
                    var opt = {
                        margin: 0.5,
                        filename: 'bookingConfirmation_<%= bookingDetails.getBooking_id01() %>.pdf',
                        image: { type: 'jpeg', quality: 0.98 },
                        html2canvas: { scale: 2, logging: true, dpi: 192, letterRendering: true }, // Added logging and dpi for better render
                        jsPDF: { unit: 'in', format: 'letter', orientation: 'portrait' }
                    };
                    html2pdf().from(pdfContent).set(opt).save();
                });
        }
    </script>
<%
    } // end of if (bookingDetails != null)
%>
</body>
</html>