package in.tourstravels.dao;

import java.util.ArrayList;



import in.tourstravels.dto.packages;
import in.tourstravels.dto.places;

public interface PlacesDAO {
	
	public boolean insertPlaces(places p1);
	public ArrayList<places> getallPlacesinfo();
	public places getplacesinfo(int placeid);
	public boolean updatePlaces(places p2);
	public boolean deletePlaces(int pid);
	

}
