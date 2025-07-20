package in.tourstravels.dto;

public class guide {
	
	private int guide_id;
	private String guide_name;
	private String guide_img;
	private String location;
	private String languages;
	private int daily_charge;
	private long phone_no;
	public int getGuide_id() {
		return guide_id;
	}
	public void setGuide_id(int guide_id) {
		this.guide_id = guide_id;
	}
	public String getGuide_name() {
		return guide_name;
	}
	public void setGuide_name(String guide_name) {
		this.guide_name = guide_name;
	}
	public String getGuide_img() {
		return guide_img;
	}
	public void setGuide_img(String guide_img) {
		this.guide_img = guide_img;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getLanguages() {
		return languages;
	}
	public void setLanguages(String languages) {
		this.languages = languages;
	}
	public int getDaily_charge() {
		return daily_charge;
	}
	public void setDaily_charge(int daily_charge) {
		this.daily_charge = daily_charge;
	}
	public long getPhone_no() {
		return phone_no;
	}
	public void setPhone_no(long phone_no) {
		this.phone_no = phone_no;
	}
	@Override
	public String toString() {
		return "guide [guide_id=" + guide_id + ", guide_name=" + guide_name + ", guide_img=" + guide_img + ", location="
				+ location + ", languages=" + languages + ", daily_charge=" + daily_charge + ", phone_no=" + phone_no
				+ "]";
	}
	
	

}
