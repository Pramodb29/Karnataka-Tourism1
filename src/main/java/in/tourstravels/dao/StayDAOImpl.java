package in.tourstravels.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import in.tourstravels.connection.connector;
import in.tourstravels.dto.stay;
import in.tourstravels.dto.vehicle;

public class StayDAOImpl implements StayDAO {
	
private Connection con;
	
	public StayDAOImpl() {
		this.con=connector.requestConnection();
	}

	@Override
	public boolean insertStay(stay s1) {
		String sql = "INSERT INTO stay (resort_name, location, resort_img, cost_per_day, food_snacks) VALUES (?, ?, ?, ?, ?)";

        try (PreparedStatement ps = con.prepareStatement(sql)) {
        	ps.setString(1, s1.getResort_name());
        	ps.setString(2, s1.getLocation());
        	ps.setString(3, s1.getResort_img());
        	ps.setInt(4, s1.getCost_per_day());
        	ps.setString(5, s1.getFood_snacks());
        	
          
            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
	
	}

	@Override
	public ArrayList<stay> getallStayinfo() {
		String query="SELECT * FROM STAY";
		ArrayList<stay> plist=new ArrayList<>();
		stay s=null;
		PreparedStatement ps=null;
		try {
			ps=con.prepareStatement(query);
			
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				s=new stay();
				s.setStay_id(rs.getInt("stay_id"));
				s.setResort_name(rs.getString("resort_name"));
				s.setResort_img(rs.getString("resort_img"));
				s.setLocation(rs.getString("location"));
				s.setCost_per_day(rs.getInt("cost_per_day"));
				s.setFood_snacks(rs.getString("food_snacks"));
							
				plist.add(s);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return plist;
	}

	@Override
	public boolean updateStay(stay s) {
		 String sql = "UPDATE stay SET resort_img = ?, resort_name = ?, location = ?, cost_per_day=?  WHERE stay_id = ?";
	        try (PreparedStatement ps = con.prepareStatement(sql)) {
	            ps.setString(1, s.getResort_img());
	            ps.setString(2, s.getResort_name());
	            ps.setString(3, s.getLocation());
	            ps.setLong(4, s.getCost_per_day());  
	            ps.setInt(5, s.getStay_id());
	            return ps.executeUpdate() > 0;
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	        return false;
	        
	}

	@Override
	public boolean deleteStay(int sid) {
		String sql = "DELETE FROM stay WHERE stay_id = ?";
        try (PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setInt(1, sid);
            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
	}

	@Override
	public stay getStaysinfo(int sid) {
		String sql = "SELECT * FROM stay WHERE stay_id = ?";
        try (PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setInt(1, sid);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                stay s = new stay();
                s.setStay_id(rs.getInt("stay_id"));
                s.setResort_img(rs.getString("resort_img"));
                s.setResort_name(rs.getString("resort_name"));
               s.setLocation(rs.getString("location"));
                s.setCost_per_day(rs.getInt("cost_per_day"));
                      
                return s;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
	}
	
	

}
