package in.tourstravels.servelet;

import java.io.IOException;

import in.tourstravels.dao.VehicleDAO;
import in.tourstravels.dao.VehicleDAOImpl;

import in.tourstravels.dto.vehicle;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/addVehicleAction")
public class AddVehicleAction extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String action = request.getParameter("action");
		VehicleDAO dao = new VehicleDAOImpl();

		try {
			if ("add".equalsIgnoreCase(action)) {
				String img = request.getParameter("vehicle_img");
				String type = request.getParameter("vehicle_type");
				int capacity = Integer.parseInt(request.getParameter("capacity"));
				int cost = Integer.parseInt(request.getParameter("cost_per_day"));
				long driverno = Long.parseLong(request.getParameter("driverno"));
				String vnumber = request.getParameter("vehicle_number");

				vehicle v1 = new vehicle();
				v1.setVehicle_img(img);
				v1.setVehicle_type(type);
				v1.setCapacity(capacity);
				v1.setCost_per_day(cost);
				v1.setDriverno(driverno);
				v1.setVehicle_number(vnumber);

				boolean inserted = dao.insertVehicles(v1);
				response.sendRedirect("familyPackages.jsp");

			}
			
			  else if ("delete".equalsIgnoreCase(action)) {
			  int vid =Integer.parseInt(request.getParameter("p_id")); 
			  boolean deleted =dao.deleteVehicle(vid); 
			  response.sendRedirect("viewVehicle.jsp?Vehicle-Deleted-Successfully");
			  }
			
			else if ("update".equalsIgnoreCase(action)) {
			    int vehicleid = Integer.parseInt(request.getParameter("vehicleId")); 
			    String image = request.getParameter("image"); 
			    String vehicleType = request.getParameter("vehicle_type");
			    int cost = Integer.parseInt(request.getParameter("cost"));
			    long phone = Long.parseLong(request.getParameter("driverno"));
			    String vehicle_num = request.getParameter("vnumber"); 

			    vehicle v1 = new vehicle(); 
			    v1.setVehicle_id(vehicleid); // ✅ Set correct vehicle ID
			    v1.setVehicle_img(image); 
			    v1.setVehicle_type(vehicleType); 
			    v1.setCost_per_day(cost); 
			    v1.setDriverno(phone); 
			    v1.setVehicle_number(vehicle_num); 

			    boolean updated = dao.updateVehicle(v1); // ✅ Use correct update method
			    response.sendRedirect("viewVehicle.jsp?Vehicle-Updated-Successfully");
			}

			
		} catch (

		Exception e) {
			e.printStackTrace();
			response.sendRedirect("adminDashboard.jsp");
		}
	}

}
