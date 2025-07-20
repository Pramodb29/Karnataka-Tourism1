package in.tourstravels.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import in.tourstravels.dto.packages;

import in.tourstravels.dto.packages;
import in.tourstravels.connection.connector;
import in.tourstravels.dto.packages;

public class PackageDAOImpl implements PackageDAO {
private Connection con;
	
	public PackageDAOImpl() {
		this.con=connector.requestConnection();
	}

	@Override
	public boolean insertPackage(packages t) {
		String sql = "INSERT INTO packages (image_url, pname, pickup, places, duration, stayandfood, price, slots, v_number, ManagerNo) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
	    try (PreparedStatement ps = con.prepareStatement(sql)) {
	        ps.setString(1, t.getImage_url());
	        ps.setString(2, t.getPname());
	        ps.setString(3, t.getPickup());
	        
	        ps.setString(4, t.getPlaces());
	        ps.setString(5, t.getDuration());
	        ps.setString(6, t.getStayandfood());
	        ps.setDouble(7, t.getPrice());
	        ps.setInt(8, t.getSlots());
	        ps.setString(9, t.getV_number());
	        ps.setLong(10, t.getManagerNo());

	        return ps.executeUpdate() > 0;
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return false;
	}

	@Override
	public ArrayList<packages> getallPackagesinfo() {
		
		String query="SELECT * FROM PACKAGES";
		ArrayList<packages> plist=new ArrayList<>();
		packages a=null;
		PreparedStatement ps=null;
		try {
			ps=con.prepareStatement(query);
			
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				a=new packages();
				a.setPid(rs.getInt("pid"));
				a.setImage_url(rs.getString("image_url"));
				a.setPname(rs.getString("pname"));
				a.setPickup(rs.getString("pickup"));
				
				a.setPlaces(rs.getString("places"));
				a.setDuration(rs.getString("duration"));
				a.setStayandfood(rs.getString("stayandfood"));
				a.setPrice(rs.getDouble("price"));
				a.setSlots(rs.getInt("slots"));
				a.setV_number(rs.getString("v_number"));
				a.setManagerNo(rs.getLong("ManagerNo"));
				plist.add(a);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return plist;
		
	}

	@Override
	public packages getTourPackage(int packageId) {
		
		 String sql = "SELECT * FROM packages WHERE pid = ?";
	        try (PreparedStatement ps = con.prepareStatement(sql)) {
	            ps.setInt(1, packageId);
	            ResultSet rs = ps.executeQuery();
	            if (rs.next()) {
	                packages t = new packages();
	                t.setPid(rs.getInt("pid"));
	                t.setPname(rs.getString("pname"));
	                t.setImage_url(rs.getString("image_url"));
	                t.setPrice(rs.getDouble("price"));
	                t.setV_number(rs.getString("v_number"));
	                return t;
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	        return null;
	}

	@Override
	public boolean updatePackage(packages t) {
		  String sql = "UPDATE packages SET pname = ?, image_url = ?, price = ?, v_number = ? WHERE pid = ?";
	        try (PreparedStatement ps = con.prepareStatement(sql)) {
	            ps.setString(1, t.getPname());
	            ps.setString(2, t.getImage_url());
	            ps.setDouble(3, t.getPrice());
	            ps.setString(4, t.getV_number());
	            ps.setInt(5, t.getPid());
	            return ps.executeUpdate() > 0;
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	        return false;
	}

	@Override
	public boolean deletePackage(int packageId) {
        String sql = "DELETE FROM packages WHERE pid = ?";
        try (PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setInt(1, packageId);
            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
	}

}
