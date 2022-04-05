package model;

import java.util.Date;

public class Customer extends User{
	private int user_id;
	private Date customer_DOB;
	private String customer_phone;
	
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public Date getCustomer_DOB() {
		return customer_DOB;
	}
	public void setCustomer_DOB(Date customer_DOB) {
		this.customer_DOB = customer_DOB;
	}
	public String getCustomer_phone() {
		return customer_phone;
	}
	public void setCustomer_phone(String customer_phone) {
		this.customer_phone = customer_phone;
	}
	
	public Customer(int user_id, Date customer_DOB, String customer_phone) {
		super();
		this.user_id = user_id;
		this.customer_DOB = customer_DOB;
		this.customer_phone = customer_phone;
	}
}
