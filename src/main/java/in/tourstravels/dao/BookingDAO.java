package in.tourstravels.dao;

import java.util.ArrayList;

import in.tourstravels.dto.booking;
import in.tourstravels.dto.packages;

public interface BookingDAO {
	
	public boolean insertBooking(booking b);
	
	ArrayList<booking> getallBookinginfo(int cid);

	

	

}
