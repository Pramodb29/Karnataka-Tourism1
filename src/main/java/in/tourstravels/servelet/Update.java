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

@WebServlet("/update")
public class Update extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	   HttpSession session=req.getSession(false);
	   users u1=(users)session.getAttribute("users");
	   u1.setFname(req.getParameter("name"));
	   u1.setPhoneno(Long.parseLong(req.getParameter("phone")));
	   u1.setEmail(req.getParameter("email"));
	  
	   if(req.getParameter("password").equals(req.getParameter("cpassword"))) {
		   u1.setPassword(req.getParameter("password"));
	   }
	   u1.setAddress(req.getParameter("address"));
	   CustomerDAO udao=new CustomerDAOImpl();
	   if(udao.updateUser(u1)) {
		   req.setAttribute("success", "updated successfully");
		   RequestDispatcher rd=req.getRequestDispatcher("profile.jsp");
		   rd.forward(req, resp);
	   }
	   else {
		   req.setAttribute("fail", "fail to update");
		   RequestDispatcher rd=req.getRequestDispatcher("profile.jsp");
		   rd.forward(req, resp);
	   }
	   
	}

}
