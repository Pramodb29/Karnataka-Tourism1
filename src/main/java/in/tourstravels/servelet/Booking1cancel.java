package in.tourstravels.servelet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/CancelBooking1servlet")
public class Booking1cancel extends HttpServlet {

    private static final long serialVersionUID = 1L;

    // Handles POST request from the Cancel button form
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // Get the booking_id from the form
            int bookingId = Integer.parseInt(request.getParameter("booking_id01"));

            // DB connection info
            String dbURL = "jdbc:mysql://localhost:3306/tours_travels_management";
            String dbUser = "root";
            String dbPass = "tiger";

            // Load JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Create connection and prepare update query
            try (Connection con = DriverManager.getConnection(dbURL, dbUser, dbPass);
                 PreparedStatement ps = con.prepareStatement("UPDATE booking1 SET status = 'Cancelled' WHERE booking_id01 = ?")) {

                ps.setInt(1, bookingId);
                ps.executeUpdate();  // Cancel only this booking

                // Redirect to my trips page
                response.sendRedirect("myTrip2.jsp");
            }

        } catch (Exception e) {
            e.printStackTrace();
            // On error, redirect to booking page
            response.sendRedirect("booking1.jsp");
        }
    }
}
