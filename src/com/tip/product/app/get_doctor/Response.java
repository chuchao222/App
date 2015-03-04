package com.tip.product.app.get_doctor;

public class Response {
	
	private String userId;
	private String userName;
	private String password;
	private Response[] item;
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Response[] getItem() {
		return item;
	}
	public void setItem(Response[] item) {
		this.item = item;
	}
	
	
}
