package in.tourstravels.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import in.tourstravels.dto.packages;
import in.tourstravels.dto.review;
import in.tourstravels.dto.packages;
import in.tourstravels.dto.users;
import in.tourstravels.dto.users;
import in.tourstravels.connection.connector;


public class CustomerDAOImpl implements CustomerDAO{
	
private Connection con;
	
	public CustomerDAOImpl() {
		this.con=connector.requestConnection();
	}

	@Override
	public boolean insertCustomer(users u) {
		
		String query="INSERT INTO users VALUES (0,?,?,?,?,?,?,sysdate())";
		PreparedStatement ps=null;
		int i=0;
		try {
			ps=con.prepareStatement(query);
			ps.setString(1,u.getFname());

			ps.setString(2, u.getLname());
			ps.setLong(3, u.getPhoneno());
			ps.setString(4, u.getEmail());
			ps.setString(5, u.getPassword());
			ps.setString(6, u.getAddress());
			
			i=ps.executeUpdate();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		if(i>0) {
			return true;
		}else {
			return false;
		}

}

	@Override
	public users getCustomer(String mail, String password) {
		users u=null;
		String query="SELECT * FROM USERS WHERE EMAIL=? AND PASSWORD=?";
		PreparedStatement ps=null;
		users e=null;
		try {
			ps=con.prepareStatement(query);
			ps.setString(1, mail);
			ps.setString(2, password);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				e=new users();
				
				e.setCid(rs.getInt("cid"));
				e.setFname(rs.getString("fname"));
				e.setLname(rs.getString("lname"));
				e.setPhoneno(rs.getLong("phoneno"));
				e.setEmail(rs.getString("email"));
				
				e.setPassword(rs.getString("password"));
				e.setAddress(rs.getString("address"));
				e.setDate(rs.getString("date"));
				
			}
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
			}
			return e;
	}
	 @Override
	    public boolean isEmailExists(String email) {
	        String query = "SELECT COUNT(*) FROM USERS WHERE EMAIL = ?";
	        PreparedStatement ps = null;
	        ResultSet rs = null;
	        try {
	            ps = con.prepareStatement(query);
	            ps.setString(1, email);
	            rs = ps.executeQuery();
	            if (rs.next()) {
	                return rs.getInt(1) > 0; // If count > 0, email exists
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        } finally {
	            try {
	                if (rs != null) rs.close();
	                if (ps != null) ps.close();
	            } catch (SQLException e) {
	                e.printStackTrace();
	            }
	        }
	        return false;
	    }

	    @Override
	    public boolean isPhoneNumberExists(long phoneNumber) {
	        String query = "SELECT COUNT(*) FROM USERS WHERE PHONENO = ?";
	        PreparedStatement ps = null;
	        ResultSet rs = null;
	        try {
	            ps = con.prepareStatement(query);
	            ps.setLong(1, phoneNumber);
	            rs = ps.executeQuery();
	            if (rs.next()) {
	                return rs.getInt(1) > 0; // If count > 0, phone number exists
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        } finally {
	            try {
	                if (rs != null) rs.close();
	                if (ps != null) ps.close();
	            } catch (SQLException e) {
	                e.printStackTrace();
	            }
	        }
	        return false;
	    }

		@Override
		public boolean updateCustomer(users u) {
			
			String query="UPDATE USERS SET FNAME=?,LNAME=?,PHONENO=?,EMAIL=?,PASSWORD=?,ADDRESS=?,DATE=SYSDATE() WHERE CID=?";
			PreparedStatement ps=null;
			int i=0;
			try {
				ps=con.prepareStatement(query);
				ps.setString(1,u.getFname());
				ps.setString(2,u.getLname());
				ps.setLong(3,u.getPhoneno());
				ps.setString(4, u.getEmail());
				ps.setString(5, u.getPassword());
				ps.setString(6, u.getAddress());
				ps.setInt(7, u.getCid());
				i=ps.executeUpdate();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			if(i>0) {
				return true;
			}
			else {
				return false;
			}

		

		}

		@Override
		public users getCustomer(long phone, String mail) {
		
			users u=null;
			String query="SELECT * FROM USERS WHERE PHONENO=? AND EMAIL=?";
			PreparedStatement ps=null;
			users e=null;
			try {
				ps=con.prepareStatement(query);
				ps.setLong(1, phone);
				ps.setString(2, mail);
				ResultSet rs=ps.executeQuery();
				while(rs.next()) {
					e=new users();
					
					e.setCid(rs.getInt("cid"));
					e.setFname(rs.getString("fname"));
					e.setLname(rs.getString("lname"));
					e.setPhoneno(rs.getLong("phoneno"));
					e.setEmail(rs.getString("email"));
					e.setPassword(rs.getString("password"));
					e.setAddress(rs.getString("Address"));
					e.setDate(rs.getString("date"));
					
				}
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
				}
				return e;
		}

		@Override
		public boolean updateUser(users u) {
			
			// TODO Auto-generated method stub
			String query = "UPDATE USERS SET fname=?, phoneno=?, email=?, password=?, address=? WHERE cid=?";
	        int result = 0;
	        try {
	            PreparedStatement ps = con.prepareStatement(query);
	            ps.setString(1, u.getFname());
	            ps.setLong(2, u.getPhoneno());
	            ps.setString(3, u.getEmail());
	            ps.setString(4, u.getPassword());
	           
	            ps.setString(5, u.getAddress());
	            ps.setInt(6, u.getCid());
	            result = ps.executeUpdate();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	        if (result > 0) {
	            
	            return true;
	        } else {
	            
	            return false;
	        }
		}

		@Override
		public boolean addReview(review r) {
		
			        boolean result = false;
			        try {
			            
			        	String sql = "INSERT INTO review(uname, email, message, rating, date, customer_id) VALUES (?, ?, ?, ?, ?, ?)";

			            PreparedStatement ps = con.prepareStatement(sql);

			            ps.setString(1, r.getUname());
			            
			            ps.setString(2, r.getEmail());
			            ps.setString(3, r.getMessage());
			            ps.setString(4, r.getRating());
			            ps.setDate(5, r.getDate());
			            ps.setInt(6, r.getCustomer_id());

			            result = ps.executeUpdate() > 0;
			            con.close();
			        } catch (Exception e) {
			            e.printStackTrace();
			        }
			        return result;
			    }
		
		 @Override 
		    public ArrayList<review> getAllReviews() { 
		        ArrayList<review> reviews = new ArrayList<>(); 
		        String sql = "SELECT review_id, uname, email, rating, message, customer_id, date FROM review";


		        try (
		             PreparedStatement ps = con.prepareStatement(sql);
		             ResultSet rs = ps.executeQuery()) {

		            while (rs.next()) {
		                review r = new review();
		                r.setReview_id(rs.getInt("review_id"));
		                r.setUname(rs.getString("uname"));
		                r.setEmail(rs.getString("email"));
		                r.setRating(rs.getString("rating"));
		                r.setMessage(rs.getString("message"));
		                r.setDate(rs.getDate("date"));
		                r.setCustomer_id(rs.getInt("customer_id"));
		                reviews.add(r);
		            }
		        } catch (SQLException e) {
		            e.printStackTrace();
		        }
		        return reviews;
		    }
		
}

