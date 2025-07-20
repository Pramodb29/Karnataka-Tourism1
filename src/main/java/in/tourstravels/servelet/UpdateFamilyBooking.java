package in.tourstravels.servelet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/UpdateFamilyBooking")
public class UpdateFamilyBooking extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String bookingIdStr = request.getParameter("bookingId");
        String action = request.getParameter("action");

        if (bookingIdStr == null || action == null) {
            response.sendRedirect("viewFamilyBookings.jsp");
            return;
        }

        int bookingId = Integer.parseInt(bookingIdStr);

        Connection con = null;
        PreparedStatement ps = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tours_travels_management", "root", "tiger");

            String query = "UPDATE booking1 SET status = ? WHERE booking_id01 = ?";
            ps = con.prepareStatement(query);
            ps.setString(1, action);
            ps.setInt(2, bookingId);
            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (ps != null) ps.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        response.sendRedirect("viewFamilyBookings.jsp");
    }


}
