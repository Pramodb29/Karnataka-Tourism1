package in.tourstravels.dao;


import java.util.ArrayList;

import in.tourstravels.dto.packages;
import in.tourstravels.dto.review;
import in.tourstravels.dto.users;

import in.tourstravels.dto.users;



public interface CustomerDAO {
	
	public boolean insertCustomer(users u);
	public users getCustomer(String mail, String password);
	public boolean isEmailExists(String email);
	public boolean updateCustomer(users u);
	public boolean isPhoneNumberExists(long phoneNumber);
	public users getCustomer(long phone, String mail);
	public boolean updateUser(users u);
	
	
	public boolean addReview(review r);
	public ArrayList<review> getAllReviews();
	
	
	

}
