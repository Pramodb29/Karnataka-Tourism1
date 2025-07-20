package in.tourstravels.servelet;

import java.io.IOException;
import java.sql.Date;
import java.time.LocalDate;
import java.time.temporal.ChronoUnit;

import in.tourstravels.dao.BookingDAO;
import in.tourstravels.dao.BookingDAOImpl;
import in.tourstravels.dto.booking;
import in.tourstravels.dto.users;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/bookingServlet")
public class BookingServelet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        users user = (users) session.getAttribute("users");

        if (user == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        try {
            // Get parameters from request
            String packageName = request.getParameter("packageName");
            String places = request.getParameter("places");
            String imageURL = request.getParameter("imageURL");
            String numPersonsStr = request.getParameter("numPersons");
            String paymentMode = request.getParameter("paymentMode");
            String totalPriceStr = request.getParameter("totalPrice");

            // Correctly retrieve Manager Phone Number (Phoneno) and Package Duration (Duration)
            String managerPhoneStr = request.getParameter("Phoneno"); // This is the manager's contact number
            String packageDurationStr = request.getParameter("Duration"); // This is the package's predefined duration

            String slotsStr = request.getParameter("Slots");

            String fromDateStr = request.getParameter("fromDate");
            String toDateStr = request.getParameter("toDate");

            if (packageName == null || numPersonsStr == null || totalPriceStr == null ||
                fromDateStr == null || toDateStr == null || slotsStr == null ||
                managerPhoneStr == null || packageDurationStr == null || // Include new parameters in validation
                packageName.isEmpty() || numPersonsStr.isEmpty() || totalPriceStr.isEmpty() ||
                fromDateStr.isEmpty() || toDateStr.isEmpty() || slotsStr.isEmpty() ||
                managerPhoneStr.isEmpty() || packageDurationStr.isEmpty()) {
                request.setAttribute("error", "Missing required booking details. Please ensure all fields are filled.");
                request.getRequestDispatcher("Booking.jsp").forward(request, response);
                return;
            }

            int persons = Integer.parseInt(numPersonsStr);
            double totalPrice = Double.parseDouble(totalPriceStr);
            Date fromDate = Date.valueOf(fromDateStr);
            Date toDate = Date.valueOf(toDateStr);

            // Calculate no_of_days (duration of the *booking*)
            LocalDate localFromDate = LocalDate.parse(fromDateStr);
            LocalDate localToDate = LocalDate.parse(toDateStr);
            int noOfDaysOfBooking = (int) ChronoUnit.DAYS.between(localFromDate, localToDate);

            // Validate dates
            if (noOfDaysOfBooking <= 0) { // If toDate is not strictly after fromDate
                request.setAttribute("error", "To Date must be after From Date.");
                // Re-populate parameters for the Booking.jsp to avoid data loss on error
                request.setAttribute("packageName", packageName);
                request.setAttribute("price", totalPriceStr); // Pass price to re-calculate in JSP
                request.setAttribute("places", places);
                request.setAttribute("imageurl", imageURL);
                request.setAttribute("Slots", slotsStr);
                request.setAttribute("Phoneno", managerPhoneStr); // Pass manager phone
                request.setAttribute("Duration", packageDurationStr); // Pass package duration

                request.getRequestDispatcher("Booking.jsp").forward(request, response);
                return;
            }

            // Parse slots, manager phone, and package duration
            int slotsAvail = Integer.parseInt(slotsStr);
            long managerPhoneNumber = Long.parseLong(managerPhoneStr); // Manager's contact number
            int packageDuration = Integer.parseInt(packageDurationStr); // Original package duration from tourPackages.jsp

            // Basic check for available slots (server-side validation)
            if (persons > slotsAvail) {
                request.setAttribute("error", "Not enough slots available for " + persons + " persons. Available slots: " + slotsAvail);
                // Re-populate parameters for the Booking.jsp to avoid data loss on error
                request.setAttribute("packageName", packageName);
                request.setAttribute("price", totalPriceStr);
                request.setAttribute("places", places);
                request.setAttribute("imageurl", imageURL);
                request.setAttribute("Slots", slotsStr);
                request.setAttribute("Phoneno", managerPhoneStr);
                request.setAttribute("Duration", packageDurationStr);

                request.getRequestDispatcher("Booking.jsp").forward(request, response);
                return;
            }

            booking b = new booking();
            b.setCid(user.getCid());
            b.setTourist_name(user.getFname());
            b.setPlaces_visit(places);
            b.setPackage_name(packageName);
            b.setPackage_img(imageURL);
            b.setNum_person(persons);
            b.setPay_mode(paymentMode);
            b.setStatus("Booked");
            b.setTotal_price(totalPrice);

            // Set the fields as per your new requirements
            b.setSlots_avail(slotsAvail);
            b.setNumber(managerPhoneNumber); // Store manager's phone number in 'number' column
            b.setNo_of_days(packageDuration); // Store original package duration in 'no_of_days' column
            b.setFrom_date(fromDate);
            b.setTo_date(toDate);

            BookingDAO bDAO = new BookingDAOImpl();
            if (bDAO.insertBooking(b)) {
                response.sendRedirect("myTrip.jsp");
            } else {
                request.setAttribute("error", "Booking failed. Please try again.");
                // Re-populate parameters for the Booking.jsp to avoid data loss on error
                request.setAttribute("packageName", packageName);
                request.setAttribute("price", totalPriceStr);
                request.setAttribute("places", places);
                request.setAttribute("imageurl", imageURL);
                request.setAttribute("Slots", slotsStr);
                request.setAttribute("Phoneno", managerPhoneStr);
                request.setAttribute("Duration", packageDurationStr);

                request.getRequestDispatcher("Booking.jsp").forward(request, response);
            }

        } catch (NumberFormatException e) {
            e.printStackTrace();
            request.setAttribute("error", "Invalid numeric input. Please check your entries.");
            
            request.getRequestDispatcher("Booking.jsp").forward(request, response);
        } catch (IllegalArgumentException e) {
            e.printStackTrace();
            request.setAttribute("error", "Invalid date format or date value. Please select valid dates.");
            request.getRequestDispatcher("Booking.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", "An unexpected error occurred during booking. Please try again.");
            request.getRequestDispatcher("Booking.jsp").forward(request, response);
        }
    }
}