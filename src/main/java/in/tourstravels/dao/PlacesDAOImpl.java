package in.tourstravels.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import in.tourstravels.connection.connector;
import in.tourstravels.dto.packages;
import in.tourstravels.dto.places;

public class PlacesDAOImpl implements PlacesDAO{
	
private Connection con;
	
	public PlacesDAOImpl() {
		this.con=connector.requestConnection();
	}

	@Override
	public boolean insertPlaces(places p1) {
		
		String sql = "INSERT INTO places (package_name, image, sel_places, description, date, duration) VALUES (?, ?, ?, ?, NOW(), ?)";

	        try (PreparedStatement ps = con.prepareStatement(sql)) {
	        	ps.setString(1, p1.getPackage_name());
	        	ps.setString(2, p1.getImage());
	        	ps.setString(3, p1.getSel_places());
	        	ps.setString(4, p1.getDescription());
	        	ps.setInt(5, p1.getDuration());

	          
	            return ps.executeUpdate() > 0;
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	        return false;
	}

	@Override
	public ArrayList<places> getallPlacesinfo() {
		
		String query="SELECT * FROM PLACES";
		ArrayList<places> plist=new ArrayList<>();
		places a=null;
		PreparedStatement ps=null;
		try {
			ps=con.prepareStatement(query);
			
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				a=new places();
				a.setPlace_id(rs.getInt("place_id"));
				a.setPackage_name(rs.getString("package_name"));
				a.setImage(rs.getString("image"));
				a.setSel_places(rs.getString("sel_places"));
				a.setDescription(rs.getString("description"));
				a.setDuration(rs.getInt("duration"));
							
				plist.add(a);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return plist;
	}

	@Override
	public places getplacesinfo(int placeid) {
		String sql = "SELECT * FROM places WHERE place_id = ?";
        try (PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setInt(1, placeid);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                places t = new places();
                t.setPlace_id(rs.getInt("place_id"));
                t.setPackage_name(rs.getString("package_name"));
                t.setImage(rs.getString("image"));
                t.setSel_places(rs.getString("sel_places"));
                t.setDescription(rs.getString("description"));
                t.setDuration(rs.getInt("duration"));
                
                return t;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
	}

	@Override
	public boolean updatePlaces(places p2) {
		 String sql = "UPDATE places SET sel_places = ?, image = ? WHERE place_id = ?";
	        try (PreparedStatement ps = con.prepareStatement(sql)) {
	            ps.setString(1, p2.getSel_places());
	            ps.setString(2, p2.getImage());
	           
	            ps.setInt(3, p2.getPlace_id());
	            return ps.executeUpdate() > 0;
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	        return false;
	}

	@Override
	public boolean deletePlaces(int pid) {
		
		String sql = "DELETE FROM places WHERE place_id = ?";
        try (PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setInt(1, pid);
            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
	}
	
	

}
