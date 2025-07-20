package in.tourstravels.dto;

public class vehicle {
	
	private int vehicle_id;
	private String vehicle_img;
	private String vehicle_type;
	private int capacity;
	private int cost_per_day;
	private long driverno;
	private String vehicle_number;
	public int getVehicle_id() {
		return vehicle_id;
	}
	public void setVehicle_id(int vehicle_id) {
		this.vehicle_id = vehicle_id;
	}
	public String getVehicle_img() {
		return vehicle_img;
	}
	public void setVehicle_img(String vehicle_img) {
		this.vehicle_img = vehicle_img;
	}
	public String getVehicle_type() {
		return vehicle_type;
	}
	public void setVehicle_type(String vehicle_type) {
		this.vehicle_type = vehicle_type;
	}
	public int getCapacity() {
		return capacity;
	}
	public void setCapacity(int capacity) {
		this.capacity = capacity;
	}
	public int getCost_per_day() {
		return cost_per_day;
	}
	public void setCost_per_day(int cost_per_day) {
		this.cost_per_day = cost_per_day;
	}
	public long getDriverno() {
		return driverno;
	}
	public void setDriverno(long driverno) {
		this.driverno = driverno;
	}
	public String getVehicle_number() {
		return vehicle_number;
	}
	public void setVehicle_number(String vehicle_number) {
		this.vehicle_number = vehicle_number;
	}
	@Override
	public String toString() {
		return "vehicle [vehicle_id=" + vehicle_id + ", vehicle_img=" + vehicle_img + ", vehicle_type=" + vehicle_type
				+ ", capacity=" + capacity + ", cost_per_day=" + cost_per_day + ", driverno=" + driverno
				+ ", vehicle_number=" + vehicle_number + "]";
	}
	
	
	
	

}
