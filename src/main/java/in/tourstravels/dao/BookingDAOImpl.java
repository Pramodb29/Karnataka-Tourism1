package in.tourstravels.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import in.tourstravels.connection.connector;
import in.tourstravels.dto.booking;
import in.tourstravels.dto.packages;

public class BookingDAOImpl implements BookingDAO {

private Connection con;
	
	public BookingDAOImpl() {
		this.con=connector.requestConnection();
	}
	
	@Override
	public boolean insertBooking(booking b) {
	    // CORRECTED: Changed 'places_vist' to 'places_visit'
	    String query = "INSERT INTO booking (cid, tourist_name, package_name, places_visit, package_img, num_person, slots_avail, number, total_price, pay_mode, status, no_of_days, from_date, to_date, booked_date) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, sysdate())";
	    try {
	        PreparedStatement ps = con.prepareStatement(query);
	        ps.setInt(1, b.getCid());
	        ps.setString(2, b.getTourist_name());
	        ps.setString(3, b.getPackage_name());
	        ps.setString(4, b.getPlaces_visit()); // This method name is correct
	        ps.setString(5, b.getPackage_img());
	        ps.setInt(6, b.getNum_person());
	        ps.setInt(7, b.getSlots_avail());
	        ps.setLong(8, b.getNumber()); // This will now store manager's phone number
	        ps.setDouble(9, b.getTotal_price());
	        ps.setString(10, b.getPay_mode());
	        ps.setString(11, b.getStatus());
	        ps.setInt(12, b.getNo_of_days()); // This will now store package duration
	        ps.setDate(13, b.getFrom_date());
	        ps.setDate(14, b.getTo_date());

	        return ps.executeUpdate() > 0;
	    } catch (SQLException e) {
	        e.printStackTrace();

	    }
	    return false;
	}

	@Override
	public ArrayList<booking> getallBookinginfo(int cid) {
	    String query = "SELECT booking_id, cid, tourist_name, package_name, package_img, num_person, total_price, pay_mode, status, no_of_days, from_date, to_date, booked_date from Booking ORDER BY booked_date DESC";
	    ArrayList<booking> blist = new ArrayList<>();
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
	            booking b = new booking();
	            b.setBooking_id(rs.getInt("booking_id"));
	            b.setCid(rs.getInt("cid"));
	            b.setTourist_name(rs.getString("tourist_name"));
	            b.setPackage_name(rs.getString("package_name"));
	            
	            b.setPackage_img(rs.getString("package_img"));
	            b.setNum_person(rs.getInt("num_person"));

	            b.setTotal_price(rs.getDouble("total_price"));
	            b.setPay_mode(rs.getString("pay_mode"));
	            b.setStatus(rs.getString("status"));
	            b.setNo_of_days(rs.getInt("no_of_days"));
	            b.setFrom_date(rs.getDate("from_date"));
	            b.setTo_date(rs.getDate("to_date"));
	            b.setBooked_date(rs.getTimestamp("booked_date"));
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
