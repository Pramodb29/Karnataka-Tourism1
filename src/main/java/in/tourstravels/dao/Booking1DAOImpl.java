package in.tourstravels.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import in.tourstravels.connection.connector;
import in.tourstravels.dto.booking;
import in.tourstravels.dto.booking1;

public class Booking1DAOImpl implements Booking1DAO {
	
private Connection con;
	
	public Booking1DAOImpl() {
		this.con=connector.requestConnection();
	}

	@Override
	public boolean insertBooking1(booking1 b) {
		String sql = "INSERT INTO booking1 (cid, tourist_name, email, phoneno, package_name, places, p_image, traveldate, vehicle_name, resort_name, food, duration, v_capacity, v_cost, guide_name, guide_cost, resort_cost, total_price, status, booked_date) "
		           + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, sysdate())";




		 try (PreparedStatement ps = con.prepareStatement(sql)) {
		        ps.setInt(1, b.getCid());
		        ps.setString(2, b.getTourist_name());
		        ps.setString(3, b.getEmail());
		        ps.setLong(4, b.getPhoneno());
		        ps.setString(5, b.getPackage_name());
		        ps.setString(6, b.getPlaces());
		        ps.setString(7, b.getP_image());
		        ps.setString(8, b.getTraveldate());
		        ps.setString(9, b.getVehicle_name());
		        ps.setString(10, b.getResort_name());
		        ps.setString(11, b.getFood());
		        ps.setInt(12, b.getDuration());
		        ps.setInt(13, b.getV_capacity());
		        ps.setInt(14, b.getV_cost());
		        ps.setString(15, b.getGuide_name());
		        ps.setInt(16, b.getGuide_cost());
		        ps.setInt(17, b.getResort_cost());
		        ps.setInt(18, b.getTotal_price());
		        ps.setString(19, b.getStatus());

		        int rows = ps.executeUpdate();
		        return rows > 0;

		    } catch (Exception e) {
		        e.printStackTrace();
		        return false;
		    }
	}

	@Override
	public ArrayList<booking1> getallBooking1info(int cid) {
		 String query = "SELECT booking_id01, cid, tourist_name, package_name, p_image, v_capacity, total_price, pay_mode, status, duration, traveldate, phoneno, booked_date from Booking1 ORDER BY booked_date DESC";
		    ArrayList<booking1> blist = new ArrayList<>();
		    PreparedStatement ps = null;
		    ResultSet rs = null;
		    try {
		        // Re-check connection here as well, if connector.requestConnection() could return null
		        if (con == null || con.isClosed()) {
		            con = connector.requestConnection(); // Re-establish if needed
		            if (con == null) {
		                System.err.println("ERROR: Could not re-establish database connection for getallBookinginfo.");
		                return blist;
		            }
		        }
		        ps = con.prepareStatement(query);
		        //ps.setInt(1, cid);
		        rs = ps.executeQuery();
		        while (rs.next()) {
		            booking1 b = new booking1();
		            b.setBooking_id01(rs.getInt("booking_id01"));
		            b.setCid(rs.getInt("cid"));
		            b.setTourist_name(rs.getString("tourist_name"));
		            b.setPackage_name(rs.getString("package_name"));
		            
		            b.setP_image(rs.getString("p_image"));
		            b.setV_capacity(rs.getInt("v_capacity"));

		            b.setTotal_price(rs.getInt("total_price"));
		            b.setPay_mode(rs.getString("pay_mode"));
		            b.setStatus(rs.getString("status"));
		            b.setDuration(rs.getInt("duration"));
		            b.setTraveldate(rs.getString("traveldate"));
		            b.setPhoneno(rs.getLong("phoneno"));
		            b.setBooked_date(rs.getString("booked_date"));
		            blist.add(b);
		        }
		    } catch (SQLException e) {
		        System.err.println("SQL Exception in getallBookinginfo: " + e.getMessage());
		        e.printStackTrace(); // THIS IS THE MOST IMPORTANT DEBUGGING STEP
		    } finally {
		        // Close resources
		        try {
		            if (rs != null) rs.close();
		            if (ps != null) ps.close();
		        } catch (SQLException e) {
		            e.printStackTrace();
		        }
		        // Do NOT close 'con' here if 'connector.requestConnection()' provides a pooled connection
		        // or if the connection is intended to be reused across DAO instances.
		    }
		    return blist;
		}

	
	
	


}
