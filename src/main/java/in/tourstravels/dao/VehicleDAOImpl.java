package in.tourstravels.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import in.tourstravels.connection.connector;
import in.tourstravels.dto.places;
import in.tourstravels.dto.vehicle;

public class VehicleDAOImpl implements VehicleDAO{
	
private Connection con;
	
	public VehicleDAOImpl() {
		this.con=connector.requestConnection();
	}

	@Override
	public boolean insertVehicles(vehicle v1) {
		String sql = "INSERT INTO vehicle (vehicle_img, vehicle_type, capacity, cost_per_day, driverno, vehicle_number) VALUES (?, ?, ?, ?, ?, ?)";

        try (PreparedStatement ps = con.prepareStatement(sql)) {
        	ps.setString(1, v1.getVehicle_img());
        	ps.setString(2, v1.getVehicle_type());
        	ps.setInt(3, v1.getCapacity());
        	ps.setInt(4, v1.getCost_per_day());
        	ps.setLong(5, v1.getDriverno());
        	ps.setString(6, v1.getVehicle_number());
          
            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
	}

	@Override
	public ArrayList<vehicle> getallVehiclesinfo() {
		String query="SELECT * FROM VEHICLE";
		ArrayList<vehicle> plist=new ArrayList<>();
		vehicle v=null;
		PreparedStatement ps=null;
		try {
			ps=con.prepareStatement(query);
			
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				v=new vehicle();
				v.setVehicle_id(rs.getInt("vehicle_id"));
				v.setVehicle_img(rs.getString("vehicle_img"));
				v.setVehicle_type(rs.getString("vehicle_type"));
				v.setCapacity(rs.getInt("capacity"));
				v.setCost_per_day(rs.getInt("cost_per_day"));
				v.setDriverno(rs.getLong("driverno"));
				v.setVehicle_number(rs.getString("vehicle_number"));
							
				plist.add(v);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return plist;
	}

	@Override
	public vehicle getvehiclesinfo(int vid) {
	
		String sql = "SELECT * FROM vehicle WHERE vehicle_id = ?";
        try (PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setInt(1, vid);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                vehicle t = new vehicle();
                t.setVehicle_id(rs.getInt("vehicle_id"));
                t.setVehicle_img(rs.getString("vehicle_img"));
                t.setVehicle_type(rs.getString("vehicle_type"));
               
                t.setCost_per_day(rs.getInt("cost_per_day"));
                t.setDriverno(rs.getLong("driverno"));
                t.setVehicle_number(rs.getString("vehicle_number"));
            
                return t;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
	}

	@Override
	public boolean updateVehicle(vehicle v) {
		 String sql = "UPDATE vehicle SET vehicle_img = ?, vehicle_type = ?, cost_per_day=?, driverno=?, vehicle_number=?  WHERE vehicle_id = ?";
	        try (PreparedStatement ps = con.prepareStatement(sql)) {
	            ps.setString(1, v.getVehicle_img());
	            ps.setString(2, v.getVehicle_type());
	            ps.setInt(3, v.getCost_per_day());
	            ps.setLong(4, v.getDriverno());
	            ps.setString(5, v.getVehicle_number());
	            ps.setInt(6, v.getVehicle_id());
	            return ps.executeUpdate() > 0;
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	        return false;
	}

	@Override
	public boolean deleteVehicle(int vid) {
		
		String sql = "DELETE FROM vehicle WHERE vehicle_id = ?";
        try (PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setInt(1, vid);
            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
	}

	

}
