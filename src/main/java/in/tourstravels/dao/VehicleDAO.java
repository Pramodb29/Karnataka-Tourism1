package in.tourstravels.dao;

import java.util.ArrayList;

import in.tourstravels.dto.places;
import in.tourstravels.dto.vehicle;

public interface VehicleDAO {
	
	public boolean insertVehicles(vehicle v1);
	public ArrayList<vehicle> getallVehiclesinfo();
	public vehicle getvehiclesinfo(int vid);
	public boolean updateVehicle(vehicle v);
	public boolean deleteVehicle(int vid);


}
