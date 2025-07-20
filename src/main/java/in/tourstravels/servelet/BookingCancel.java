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

@WebServlet("/cancelbookingservlet")
public class BookingCancel extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            int bookingId = Integer.parseInt(request.getParameter("booking_id"));  // Must match the form input name

            String dbURL = "jdbc:mysql://localhost:3306/tours_travels_management";
            String dbUser = "root";
            String dbPass = "tiger";

            Class.forName("com.mysql.cj.jdbc.Driver");
            try (Connection con = DriverManager.getConnection(dbURL, dbUser, dbPass);
                 PreparedStatement ps = con.prepareStatement("UPDATE booking SET status = 'Cancelled' WHERE booking_id = ?")) {

                ps.setInt(1, bookingId);
                ps.executeUpdate();
            }

            response.sendRedirect("viewBookedTrip.jsp");

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("viewBookedTrip.jsp");

        }
    }


}
