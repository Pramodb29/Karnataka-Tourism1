package in.tourstravels.servelet;

import java.io.IOException;

import in.tourstravels.dao.PlacesDAO;
import in.tourstravels.dao.PlacesDAOImpl;
import in.tourstravels.dto.places;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/addPlaceAction")
public class AddPlaces extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");
        PlacesDAO dao = new PlacesDAOImpl();

        try {
            if ("add".equalsIgnoreCase(action)) {
            	 String pname = request.getParameter("pname");
                String places = request.getParameter("addplaces");
                String desc = request.getParameter("desc");
                String image = request.getParameter("image");
                int duration = Integer.parseInt(request.getParameter("duration"));
               

               places p1=new places();
               p1.setPackage_name(pname);
                p1.setSel_places(places);
                p1.setDescription(desc);
                p1.setImage(image);
                p1.setDuration(duration);

                boolean inserted = dao.insertPlaces(p1);
                response.sendRedirect("viewfamilyPackages.jsp");

            } else if ("delete".equalsIgnoreCase(action)) {
                int pid = Integer.parseInt(request.getParameter("p_id"));
                boolean deleted = dao.deletePlaces(pid);
                response.sendRedirect("viewfamilyPackages.jsp");

           } else if ("update".equalsIgnoreCase(action)) {
                int placeiId = Integer.parseInt(request.getParameter("packageId"));
                String name = request.getParameter("name");
                String imageUrl = request.getParameter("image_url");
                

                places p1 = new places();
                p1.setPlace_id(placeiId); // ensure place_id is set
                p1.setSel_places(name);
                p1.setImage(imageUrl);
               

                boolean updated = dao.updatePlaces(p1);
                response.sendRedirect("viewfamilyPackages.jsp");
            } else {
                response.sendRedirect("adminDashboard.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("adminDashboard.jsp");
        }
    }

}
