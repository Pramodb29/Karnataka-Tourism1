package in.tourstravels.servelet;

import java.io.IOException;

import in.tourstravels.dao.CustomerDAO;
import in.tourstravels.dao.CustomerDAOImpl;
import in.tourstravels.dto.users;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/signup")
public class signup extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {

        users user = new users();
        CustomerDAO customerDao = new CustomerDAOImpl();

        String fname = req.getParameter("fname");
        String lname = req.getParameter("lname");
        String phonenoStr = req.getParameter("phoneno");
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        String confirmPassword = req.getParameter("confirmpassword");
        String address = req.getParameter("address");

        long phoneno = 0;
        try {
            phoneno = Long.parseLong(phonenoStr);
        } catch (NumberFormatException e) {
            req.setAttribute("error", "Invalid Phone Number format.");
            RequestDispatcher rd = req.getRequestDispatcher("signup.jsp");
            rd.forward(req, resp);
            return;
        }

        // 1. Password Mismatch Check
        if (!password.equals(confirmPassword)) {
            req.setAttribute("error", "Password Mismatch! Please re-enter passwords.");
            RequestDispatcher rd = req.getRequestDispatcher("signup.jsp");
            rd.forward(req, resp);
            return; // Stop further processing
        }

        // 2. Email Existence Check
        if (customerDao.isEmailExists(email)) {
            req.setAttribute("error", "This email already registered. Please use Another.");
            RequestDispatcher rd = req.getRequestDispatcher("signup.jsp");
            rd.forward(req, resp);
            return; // Stop further processing
        }

        // 3. Phone Number Existence Check
        if (customerDao.isPhoneNumberExists(phoneno)) {
            req.setAttribute("error", "This phone number is already registered. Please use Another.");
            RequestDispatcher rd = req.getRequestDispatcher("signup.jsp");
            rd.forward(req, resp);
            return; // Stop further processing
        }

        // If all validations pass, proceed with registration
        user.setFname(fname);
        user.setLname(lname);
        user.setPhoneno(phoneno);
        user.setEmail(email);
        user.setPassword(password); // Password is confirmed at this point
        user.setAddress(address);

        boolean res = customerDao.insertCustomer(user);

        if (res) {
            req.setAttribute("success", "Registration Successful! login.");
            RequestDispatcher rd = req.getRequestDispatcher("login.jsp");
            rd.forward(req, resp);
        } else {
            req.setAttribute("error", "Registration Failed! Please try again due to an internal error.");
            RequestDispatcher rd = req.getRequestDispatcher("signup.jsp");
            rd.forward(req, resp);
        }
    }
}