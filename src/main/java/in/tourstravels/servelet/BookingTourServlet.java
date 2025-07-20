package in.tourstravels.servelet;

import java.io.IOException;
import java.sql.Date;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import in.tourstravels.dao.Booking1DAO;
import in.tourstravels.dao.Booking1DAOImpl;
import in.tourstravels.dto.booking1;
import in.tourstravels.dto.users;

@WebServlet("/booktourAction")
public class BookingTourServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        users user = (users) session.getAttribute("users");

        if (user == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        try {
            String email = request.getParameter("email");
            String phoneStr = request.getParameter("phone");
            String packageName = request.getParameter("package_name");
            String places = request.getParameter("places");
            String image  = request.getParameter("image");
            String dateStr = request.getParameter("date");
            String vehicle = request.getParameter("vehicle");
            String resort = request.getParameter("resort");
            String food = request.getParameter("food");
            String durationStr = request.getParameter("duration");
            String capacityStr = request.getParameter("capacity");
            String vehicleCostStr = request.getParameter("vehicleCost");
            String guide = request.getParameter("guide");
            String guideCostStr = request.getParameter("guideCost");
            String resortCostStr = request.getParameter("resortCost");
            String totalStr = request.getParameter("total_amount");

            // Parse necessary fields
            long phone = Long.parseLong(phoneStr);
            int duration = Integer.parseInt(durationStr);
            int capacity = Integer.parseInt(capacityStr);
            double vehicleCost = Double.parseDouble(vehicleCostStr);
            double guideCost = Double.parseDouble(guideCostStr);
            double resortCost = Double.parseDouble(resortCostStr);
            double total = Double.parseDouble(totalStr);
            

            // Create booking object
            booking1 b = new booking1();

            // Allocate data based on the booking1 POJO
            b.setCid(user.getCid());
            b.setTourist_name(user.getFname());
            b.setEmail(email);
            b.setPhoneno(phone);
            b.setPackage_name(packageName);
            b.setPlaces(places);
            b.setP_image(image);
            b.setTraveldate(dateStr);
            b.setVehicle_name(vehicle);
            b.setResort_name(resort);
            b.setFood(food);
            b.setDuration(duration);
            b.setV_capacity(capacity);
            b.setV_cost((int) vehicleCost);
            b.setGuide_name(guide);
            b.setGuide_cost((int) guideCost);
            b.setResort_cost((int) resortCost);
            b.setTotal_price((int) total);
            b.setStatus("Booked");

            Booking1DAO dao = new Booking1DAOImpl();
            boolean success = dao.insertBooking1(b);

            if (success) {
                response.sendRedirect("myTrip2.jsp");
            } else {
                request.setAttribute("error", "Booking failed. Please try again.");
                request.getRequestDispatcher("NewBooking.jsp").forward(request, response);
            }

        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", "Something went wrong. Please check your inputs.");
            request.getRequestDispatcher("NewBooking.jsp").forward(request, response);
        }
    }
}