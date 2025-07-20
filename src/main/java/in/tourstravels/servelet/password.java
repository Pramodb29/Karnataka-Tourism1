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

@WebServlet("/password")
public class password extends HttpServlet {
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		
		//Collecting the request from the client
		//reading the form data
		CustomerDAO edao = new CustomerDAOImpl();
	    //PrintWriter out = resp.getWriter();
        users u=edao.getCustomer(Long.parseLong(req.getParameter("phone")),req.getParameter("email"));
       
        if(u!=null && req.getParameter("password").equals(req.getParameter("confirmPassword"))) {
        	u.setPassword(req.getParameter("password"));
        	boolean res=edao.updateCustomer(u);
        	if(res) {
        		//out.println("<h1>Password updated successfully</h1>");
        		req.setAttribute("success","Password Updated Successfully");
				RequestDispatcher rd=req.getRequestDispatcher("login.jsp");
				
				rd.forward(req, resp);
        	}else {
        		//out.println("<h1>Failed! updated Password</h1>");
        		req.setAttribute("error", "Failed to Updated");
				RequestDispatcher rd=req.getRequestDispatcher("password.jsp");
				rd.forward(req, resp);
        	}
        }
        
        
        else {
        
        	req.setAttribute("error", "Password Mismatch!");
			RequestDispatcher rd=req.getRequestDispatcher("password.jsp");
			rd.forward(req, resp);
    	}
        }

}
