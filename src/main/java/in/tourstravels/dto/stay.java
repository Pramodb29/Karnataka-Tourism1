package in.tourstravels.dto;

import java.sql.Date;

public class stay {

	private int stay_id;
	private String resort_name;
	private String location;
	private String resort_img;
	private int cost_per_day;
	private String food_snacks;
	
	public int getStay_id() {
		return stay_id;
	}
	public void setStay_id(int stay_id) {
		this.stay_id = stay_id;
	}
	public String getResort_name() {
		return resort_name;
	}
	public void setResort_name(String resort_name) {
		this.resort_name = resort_name;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getResort_img() {
		return resort_img;
	}
	public void setResort_img(String resort_img) {
		this.resort_img = resort_img;
	}
	public int getCost_per_day() {
		return cost_per_day;
	}
	public void setCost_per_day(int cost_per_day) {
		this.cost_per_day = cost_per_day;
	}
	public String getFood_snacks() {
		return food_snacks;
	}
	public void setFood_snacks(String food_snacks) {
		this.food_snacks = food_snacks;
	}
	
	@Override
	public String toString() {
		return "stay [stay_id=" + stay_id + ", resort_name=" + resort_name + ", location=" + location + ", resort_img="
				+ resort_img + ", cost_per_day=" + cost_per_day + ", food_snacks=" + food_snacks + "]";
	}
	
	
	
}
