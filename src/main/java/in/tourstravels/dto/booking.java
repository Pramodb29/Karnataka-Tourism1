package in.tourstravels.dto;

import java.sql.Date;
import java.sql.Timestamp;

public class booking {
	
	private int booking_id;
	private int cid;//cid  from customer
	private String tourist_name;//usernamr from users
	private String package_name;//pname from packages
	private String places_visit;//from packages
	private String package_img;//image from packages
	private int num_person;
	private int slots_avail;
	private long number;
	private double total_price;
	private String pay_mode;
	private String status;
	
	//private Date booking_date;     // for Safari/Guide
	private int no_of_days;        //from packages
	private Date from_date;        // for Stay/Package
	private Date to_date;          // for Stay/Package
	private Timestamp booked_date; // when the booking was made
	
	//Setters and Getters
	
	public int getBooking_id() {
		return booking_id;
	}
	public void setBooking_id(int booking_id) {
		this.booking_id = booking_id;
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getTourist_name() {
		return tourist_name;
	}
	public void setTourist_name(String tourist_name) {
		this.tourist_name = tourist_name;
	}
	public String getPackage_name() {
		return package_name;
	}
	public void setPackage_name(String package_name) {
		this.package_name = package_name;
	}
	public String getPlaces_visit() {
		return places_visit;
	}
	public void setPlaces_visit(String places_visit) {
		this.places_visit = places_visit;
	}
	public String getPackage_img() {
		return package_img;
	}
	public void setPackage_img(String package_img) {
		this.package_img = package_img;
	}
	public int getNum_person() {
		return num_person;
	}
	public void setNum_person(int num_person) {
		this.num_person = num_person;
	}
	public int getSlots_avail() {
		return slots_avail;
	}
	public void setSlots_avail(int slots_avail) {
		this.slots_avail = slots_avail;
	}
	public long getNumber() {
		return number;
	}
	public void setNumber(long number) {
		this.number = number;
	}
	public double getTotal_price() {
		return total_price;
	}
	public void setTotal_price(double total_price) {
		this.total_price = total_price;
	}
	public String getPay_mode() {
		return pay_mode;
	}
	public void setPay_mode(String pay_mode) {
		this.pay_mode = pay_mode;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
//	public Date getBooking_date() {
//		return booking_date;
//	}
//	public void setBooking_date(Date booking_date) {
//		this.booking_date = booking_date;
//	}
	public int getNo_of_days() {
		return no_of_days;
	}
	public void setNo_of_days(int no_of_days) {
		this.no_of_days = no_of_days;
	}
	public Date getFrom_date() {
		return from_date;
	}
	public void setFrom_date(Date from_date) {
		this.from_date = from_date;
	}
	public Date getTo_date() {
		return to_date;
	}
	public void setTo_date(Date to_date) {
		this.to_date = to_date;
	}
	public Timestamp getBooked_date() {
		return booked_date;
	}
	public void setBooked_date(Timestamp booked_date) {
		this.booked_date = booked_date;
	}
	
	
	
	@Override
	public String toString() {
		return "booking [booking_id=" + booking_id + ", cid=" + cid + ", tourist_name=" + tourist_name
				+ ", package_name=" + package_name + ", places_visit=" + places_visit + ", package_img=" + package_img
				+ ", num_person=" + num_person + ", slots_avail=" + slots_avail + ", number=" + number
				+ ", total_price=" + total_price + ", pay_mode=" + pay_mode + ", status=" + status + ", no_of_days=" + no_of_days + ", from_date=" + from_date + ", to_date=" + to_date
				+ ", booked_date=" + booked_date + "]";
	}
	
	
	
	
	
	
	

}
