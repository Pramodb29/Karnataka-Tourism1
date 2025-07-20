package in.tourstravels.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import in.tourstravels.connection.connector;
import in.tourstravels.dto.guide;
import in.tourstravels.dto.vehicle;

public class GuideDAOImpl implements GuideDAO {

private Connection con;
	
	public GuideDAOImpl() {
		this.con=connector.requestConnection();
	}

	@Override
	public boolean insertGuide(guide g) {
		String sql = "INSERT INTO guide (guide_name, guide_img, location, languages, daily_charge, phone_no) VALUES (?, ?, ?, ?, ?, ?)";

        try (PreparedStatement ps = con.prepareStatement(sql)) {
        	ps.setString(1, g.getGuide_name());
        	ps.setString(2, g.getGuide_img());
        	ps.setString(3, g.getLocation());
        	ps.setString(4, g.getLanguages());
        	ps.setInt(5, g.getDaily_charge());
        	ps.setLong(6, g.getPhone_no());
          
            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
	}

	@Override
	public ArrayList<guide> getallGuidesinfo() {
		String query="SELECT * FROM GUIDE";
		ArrayList<guide> plist=new ArrayList<>();
		guide g=null;
		PreparedStatement ps=null;
		try {
			ps=con.prepareStatement(query);
			
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				g=new guide();
				g.setGuide_id(rs.getInt("guide_id"));
				g.setGuide_name(rs.getString("guide_name"));
				g.setGuide_img(rs.getString("guide_img"));
				g.setLocation(rs.getString("location"));
				g.setLanguages(rs.getString("languages"));
				g.setDaily_charge(rs.getInt("daily_charge"));
				g.setPhone_no(rs.getLong("phone_no"));
				
							
				plist.add(g);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return plist;
	
	}

	@Override
	public guide getguidesinfo(int gid) {
		String sql = "SELECT * FROM guide WHERE guide_id = ?";
        try (PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setInt(1, gid);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                guide t = new guide();
                t.setGuide_id(rs.getInt("guide_id"));
                t.setGuide_img(rs.getString("guide_img"));
                t.setGuide_name(rs.getString("guide_name"));
                t.setLanguages(rs.getString("languages"));
               t.setDaily_charge(rs.getInt("daily_charge"));
            
                return t;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
	}

	@Override
	public boolean updateGuide(guide g) {
		
		String sql = "UPDATE guide SET guide_name = ?, guide_img = ?, languages=?, daily_charge=?  WHERE guide_id = ?";
        try (PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setString(1, g.getGuide_name());
            ps.setString(2, g.getGuide_img());
            ps.setString(3, g.getLanguages());
            ps.setLong(4, g.getDaily_charge());
            ps.setInt(5, g.getGuide_id());
            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
	}

	@Override
	public boolean deleteGuide(int gid) {
		String sql = "DELETE FROM guide WHERE guide_id = ?";
        try (PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setInt(1, gid);
            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
	}	

}
