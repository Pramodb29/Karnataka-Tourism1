package in.tourstravels.servelet;

import java.io.IOException;

import in.tourstravels.dao.StayDAO;
import in.tourstravels.dao.StayDAOImpl;
import in.tourstravels.dto.stay;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/addStayAction")
public class AddStayAction extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String action = request.getParameter("action");
		StayDAO dao = new StayDAOImpl();

		try {
			if ("add".equalsIgnoreCase(action)) {
				String resort = request.getParameter("resort_name");
				String location = request.getParameter("Location");
			    String image = request.getParameter("resort_img");
				int cost = Integer.parseInt(request.getParameter("cost_per_day"));
				String food = request.getParameter("food_snacks");

				stay s1 = new stay();
				s1.setResort_name(resort);
				s1.setLocation(location);
				s1.setResort_img(image);
				s1.setCost_per_day(cost);
				s1.setFood_snacks(food);
				

				boolean inserted = dao.insertStay(s1);
				response.sendRedirect("familyPackages.jsp");

			}	else if ("update".equalsIgnoreCase(action)) {
			    int stayid = Integer.parseInt(request.getParameter("StayId")); 
			    String image = request.getParameter("image"); 
			    String resortname = request.getParameter("resort_name");
			    String location = request.getParameter("location"); 
			    int cost = Integer.parseInt(request.getParameter("cost"));
			  

			    stay s1 = new stay(); 
			    s1.setStay_id(stayid);// ✅ Set correct stay ID
			    s1.setResort_img(image); 
			    s1.setResort_name(resortname);
			    s1.setLocation(location);
			    s1.setCost_per_day(cost); 
			    

			    boolean updated = dao.updateStay(s1); // ✅ Use correct update method
			    response.sendRedirect("viewStay.jsp?Stay-Updated-Successfully");
			}
			
			
			  else if ("delete".equalsIgnoreCase(action)) {
			  int sid =Integer.parseInt(request.getParameter("p_id")); 
			  boolean deleted =dao.deleteStay(sid); 
			  response.sendRedirect("viewStay.jsp?Stay-Deleted-Successfully");
			  }
			
		

			
		} catch (

		Exception e) {
			e.printStackTrace();
			response.sendRedirect("adminDashboard.jsp");
		}
	}

	

}
