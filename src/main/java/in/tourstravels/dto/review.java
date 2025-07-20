package in.tourstravels.dto;

import java.sql.Date;

public class review {
	
	private int review_id;
	private String uname;
	private String email;
	private String rating;
	private String message;
	private Date date;
	private int customer_id;
	public int getReview_id() {
		return review_id;
	}
	public void setReview_id(int review_id) {
		this.review_id = review_id;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getRating() {
		return rating;
	}
	public void setRating(String rating) {
		this.rating = rating;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	

	public int getCustomer_id() {
	    return customer_id;
	}

	public void setCustomer_id(int customer_id) {
	    this.customer_id = customer_id;
	}
	@Override
	public String toString() {
		return "review [review_id=" + review_id + ", uname=" + uname + ", email=" + email + ", rating=" + rating
				+ ", message=" + message + ", date=" + date + ", customer_id=" + customer_id + "]";
	}

	
	
	

}
