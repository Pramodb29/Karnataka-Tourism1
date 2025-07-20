package in.tourstravels.dao;

import java.util.ArrayList;


import in.tourstravels.dto.booking1;

public interface Booking1DAO {
	
	public boolean insertBooking1(booking1 b);
	ArrayList<booking1> getallBooking1info(int cid);

}
