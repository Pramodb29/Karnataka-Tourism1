package in.tourstravels.dto;

public class users {

	private int cid;
	private String fname;
	private String lname;
	private long phoneno;
	private String email;
	private String password;
	private String Address;
	private String date;
	
	
	//pojo or dto class of employee
	//Generating getters and setters 
	
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public long getPhoneno() {
		return phoneno;
	}
	public void setPhoneno(long phoneno) {
		this.phoneno = phoneno;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	@Override
	public String toString() {
		return "users [cid=" + cid + ", fname=" + fname + ", lname=" + lname + ", phoneno=" + phoneno + ", email="
				+ email + ", password=" + password + ", Address=" + Address + ", date=" + date + "]";
	}
	
}
