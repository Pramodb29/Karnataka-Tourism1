package in.tourstravels.servelet;

import java.io.IOException;

import in.tourstravels.dao.PackageDAO;
import in.tourstravels.dao.PackageDAOImpl;
import in.tourstravels.dto.packages;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/packageAction")
public class PackageAction extends HttpServlet {
	
	 protected void doPost(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {

	        String action = request.getParameter("action");
	        PackageDAO pdao = new PackageDAOImpl();

	        try {
	            if ("add".equalsIgnoreCase(action)) {
	            	String url = request.getParameter("image_url");
	            	String pname = request.getParameter("pname");
	            	String pickup = request.getParameter("pickup");
	            	
	            	String place = request.getParameter("places");
	            	String time = request.getParameter("time");
	            	String stay = request.getParameter("stayandfood");

	            	double price = Double.parseDouble(request.getParameter("price"));
	            	int slots = Integer.parseInt(request.getParameter("slots"));
	            	String vnumber = request.getParameter("vnumber");
	            	long mnumber = Long.parseLong(request.getParameter("mnumber"));

	               

	                packages p = new packages();
	                p.setImage_url(url);
	                p.setPname(pname);
	                p.setPickup(pickup);
	              
	                p.setPlaces(place);
	                p.setDuration(time);
	                p.setStayandfood(stay);
	                p.setPrice(price);
	                p.setSlots(slots);
	                p.setV_number(vnumber);
	                p.setManagerNo(mnumber);
	               
	               

	                boolean inserted = pdao.insertPackage(p);
					 response.sendRedirect("viewPackages.jsp"); 

				} 
					  else if ("delete".equalsIgnoreCase(action)) { int packageid =
					  Integer.parseInt(request.getParameter("p_id")); 
					  boolean deleted =pdao.deletePackage(packageid); 
					  response.sendRedirect("viewPackages.jsp");
					  
					  }
					 
				
				  else if ("update".equalsIgnoreCase(action)) { 
				int packageid = Integer.parseInt(request.getParameter("packageId")); 
				  String name = request.getParameter("name"); 
				  String imageUrl = request.getParameter("image_url");
				  double priceperseat =Double.parseDouble(request.getParameter("price"));
				  String num1 =request.getParameter("num"); 
				  
				 
				  packages p1 = new packages(); 
				  p1.setPid(packageid); // ensure safari_id is set
				  p1.setPname(name);
				  p1.setImage_url(imageUrl);
				  p1.setPrice(priceperseat); 
				  p1.setV_number(num1);
				  
				  boolean updated = pdao.updatePackage(p1);
				  response.sendRedirect("viewPackages.jsp?Update Successfull"); } else {
				  response.sendRedirect("adminDashboard.jsp"); }
				 
	        } catch (Exception e) {
	            e.printStackTrace();
	            response.sendRedirect("adminDashboard.jsp");
	        }
	    }

}
