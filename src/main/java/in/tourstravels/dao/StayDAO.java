package in.tourstravels.dao;

import java.util.ArrayList;

import in.tourstravels.dto.stay;
import in.tourstravels.dto.vehicle;




public interface StayDAO {
	
	public boolean insertStay(stay s1);
	public ArrayList<stay> getallStayinfo();
	public boolean updateStay(stay s);
	public stay getStaysinfo(int sid);
	public boolean deleteStay(int sid);

}
