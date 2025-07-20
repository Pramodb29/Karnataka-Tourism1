package in.tourstravels.dto;

import java.sql.Date;

public class places {
	
	private int place_id;
	private String package_name;
	private String image;
	private String sel_places;
	private String description;
	private Date date;
	private int duration;
	public int getPlace_id() {
		return place_id;
	}
	public void setPlace_id(int place_id) {
		this.place_id = place_id;
	}
	public String getPackage_name() {
		return package_name;
	}
	public void setPackage_name(String package_name) {
		this.package_name = package_name;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getSel_places() {
		return sel_places;
	}
	public void setSel_places(String sel_places) {
		this.sel_places = sel_places;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public int getDuration() {
		return duration;
	}
	public void setDuration(int duration) {
		this.duration = duration;
	}
	@Override
	public String toString() {
		return "places [place_id=" + place_id + ", package_name=" + package_name + ", image=" + image + ", sel_places="
				+ sel_places + ", description=" + description + ", date=" + date + ", duration=" + duration + "]";
	}
	
}
