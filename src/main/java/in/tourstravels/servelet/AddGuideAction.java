package in.tourstravels.servelet;

import java.io.IOException;

import in.tourstravels.dao.GuideDAO;
import in.tourstravels.dao.GuideDAOImpl;
import in.tourstravels.dto.guide;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/addGuideAction")
public class AddGuideAction extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String action = request.getParameter("action");
		GuideDAO dao = new GuideDAOImpl();

		try {
			if ("add".equalsIgnoreCase(action)) {
				  String guideName = request.getParameter("guide_name");
				    String guideImg = request.getParameter("guide_img");
				    String location = request.getParameter("location");
				    String languages = request.getParameter("languages");
				    int dayCharge = Integer.parseInt(request.getParameter("day_charge"));
				    long phoneNo = Long.parseLong(request.getParameter("phone_no"));

				    // Create Guide object
				    guide g = new guide();
				    g.setGuide_name(guideName);
				    g.setGuide_img(guideImg);
				    g.setLocation(location);
				    g.setLanguages(languages);
				    g.setDaily_charge(dayCharge);
				    g.setPhone_no(phoneNo);

				    // Insert into DB
				   

				boolean inserted = dao.insertGuide(g);
				response.sendRedirect("familyPackages.jsp");

			}
			
			  else if ("delete".equalsIgnoreCase(action)) {
			  int gid =Integer.parseInt(request.getParameter("p_id")); 
			  boolean deleted =dao.deleteGuide(gid); 
			  response.sendRedirect("viewGuide.jsp?Guide-Deleted-Successfully");
			  }
			
			else if ("update".equalsIgnoreCase(action)) {
			    int guideid = Integer.parseInt(request.getParameter("guideId")); 
			    String gname = request.getParameter("name");
			    String image = request.getParameter("image");
			    String lang = request.getParameter("languages"); 
			    int cost = Integer.parseInt(request.getParameter("cost")); 

			    guide g1 = new guide(); 
			    g1.setGuide_id(guideid); 
			   
			    g1.setGuide_name(gname);
			    g1.setGuide_img(image); 
			    g1.setLanguages(lang);
			    g1.setDaily_charge(cost);

			    boolean updated = dao.updateGuide(g1);
			    response.sendRedirect("viewGuide.jsp?Guide-Updated-Successfully");
			}

			

			
		} catch (

		Exception e) {
			e.printStackTrace();
			response.sendRedirect("adminDashboard.jsp");
		}
	}

}
