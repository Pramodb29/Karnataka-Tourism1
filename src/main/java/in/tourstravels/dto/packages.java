package in.tourstravels.dto;

public class packages {
	
	private int pid;
	
	private String image_url;
	private String pname;
	private String pickup;
	
	private String places;
	private String duration;
	private String stayandfood;
	private double price;
	private int slots;
	private String v_number;
	private long ManagerNo;
	
	
	
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	
	public String getImage_url() {
		return image_url;
	}
	public void setImage_url(String image_url) {
		this.image_url = image_url;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPickup() {
		return pickup;
	}
	public void setPickup(String pickup) {
		this.pickup = pickup;
	}
	
	public String getPlaces() {
		return places;
	}
	public void setPlaces(String places) {
		this.places = places;
	}
	public String getDuration() {
		return duration;
	}
	public void setDuration(String duration) {
		this.duration = duration;
	}
	public String getStayandfood() {
		return stayandfood;
	}
	public void setStayandfood(String stayandfood) {
		this.stayandfood = stayandfood;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getSlots() {
		return slots;
	}
	public void setSlots(int slots) {
		this.slots = slots;
	}
	public String getV_number() {
		return v_number;
	}
	public void setV_number(String v_number) {
		this.v_number = v_number;
	}
	public long getManagerNo() {
		return ManagerNo;
	}
	public void setManagerNo(long managerNo) {
		ManagerNo = managerNo;
	}
	@Override
	public String toString() {
		return "packages [pid=" + pid + ", image_url=" + image_url + ", pname=" + pname + ", pickup="
				+ pickup + ", places=" + places + ", duration=" + duration + ", stayandfood="
				+ stayandfood + ", price=" + price + ", slots=" + slots + ", v_number=" + v_number + ", ManagerNo="
				+ ManagerNo + "]";
	}
	
	
	
	

}
