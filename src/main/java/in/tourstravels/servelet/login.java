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
import jakarta.servlet.http.HttpSession;


@WebServlet("/login")
public class login extends HttpServlet {
	
	   protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		   
		    //Collecting the request from the client
			//reading the form data
	        //String mail = req.getParameter("mail");
	        //String pass = req.getParameter("pass");
		  HttpSession s=req.getSession(true);
	        CustomerDAO cdao = new CustomerDAOImpl();
	        
	      
	        
	        //display the data in web browser
	        //PrintWriter out = resp.getWriter();

	       users u = cdao.getCustomer(req.getParameter("mail"), req.getParameter("pass"));  

	        //HttpSession session=req.getSession(true);
			
			
	       if (u != null) {
	    	    s.setAttribute("users", u);
	    	    req.setAttribute("success", "Logged in Successfully!");
	    	    RequestDispatcher rd = req.getRequestDispatcher("dashboard.jsp");
	    	    rd.forward(req, resp);  // ✅ Use forward, not redirect
	    	} else {
	    	    req.setAttribute("error", "Invalid email or password.");
	    	    RequestDispatcher rd = req.getRequestDispatcher("login.jsp");
	    	    rd.forward(req, resp);
	    	}
	       if (u != null) {
	    	    s.setAttribute("users", u);  // 👌
	    	   
	    	}


	}

}




















//package in.tourstravels.servelet;
//
//import java.io.IOException;
//
//import in.tourstravels.dao.CustomerDAO;
//import in.tourstravels.dao.CustomerDAOImpl;
//import in.tourstravels.dto.users;
//
//import jakarta.servlet.RequestDispatcher;
//import jakarta.servlet.ServletException;
//import jakarta.servlet.annotation.WebServlet;
//import jakarta.servlet.http.HttpServlet;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//import jakarta.servlet.http.HttpSession;
//
//@WebServlet("/login")
//public class login extends HttpServlet {
//
//    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
//        
//        // Start a session
//        HttpSession session = req.getSession(true);
//        
//        // DAO for user authentication
//        CustomerDAO cdao = new CustomerDAOImpl();
//
//        // Try to get user from DB using provided credentials
//        users user = cdao.getCustomer(req.getParameter("mail"), req.getParameter("pass"));
//
//        if (user != null) {
//            // ✅ Set session attributes
//            session.setAttribute("users", user); // full user object
//            session.setAttribute("email", user.getEmail());
//            session.setAttribute("phoneno", user.getPhone());
//
//            // Success message and forward to dashboard
//            req.setAttribute("success", "Logged in Successfully!");
//            RequestDispatcher rd = req.getRequestDispatcher("dashboard.jsp");
//            rd.forward(req, resp);  // Forward ensures session is maintained
//        } else {
//            // Login failed - show error message
//            req.setAttribute("error", "Invalid email or password.");
//            RequestDispatcher rd = req.getRequestDispatcher("login.jsp");
//            rd.forward(req, resp);
//        }
//    }
//}
