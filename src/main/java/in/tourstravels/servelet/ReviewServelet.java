package in.tourstravels.servelet;

import in.tourstravels.dao.CustomerDAO;
import in.tourstravels.dao.CustomerDAOImpl;
import in.tourstravels.dto.review;
import in.tourstravels.dto.users;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.sql.Date;
import java.time.LocalDate;

@WebServlet("/reviewAction")
public class ReviewServelet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Step 1: Get user from session
        HttpSession session = request.getSession(false);
        users user = (users) session.getAttribute("users");

        if (user == null) {
            request.setAttribute("status", "User session expired. Please log in again.");
            request.getRequestDispatcher("review.jsp").forward(request, response);
            return;
        }

        // Step 2: Get form data
        String uname = request.getParameter("uname");
        String email = request.getParameter("email");
        
        String message = request.getParameter("message");
        String ratingStr = request.getParameter("rating");
        

        

        Date date = Date.valueOf(LocalDate.now());

        // Step 3: Create Review DTO
        review r = new review();
        r.setUname(uname);
        r.setEmail(email);
        
        r.setMessage(message);
        r.setRating(ratingStr);
        r.setDate(date);
        r.setCustomer_id(user.getCid());

        // Step 4: Store using DAO
        CustomerDAO dao = new CustomerDAOImpl();
        boolean success = dao.addReview(r);

        // Step 5: Forward with status
        if (success) {
            request.setAttribute("status", "Thank you for your feedback!");
        } else {
            request.setAttribute("status", "There was a problem submitting your review.");
        }

        request.getRequestDispatcher("review.jsp").forward(request, response);
    }
}



















