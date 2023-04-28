package com.Model;

public class User {
	private String username;
	private String name;
	private String email;
	private String password;
	private String userType;
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public User(String username, String name, String email, String password,String userType) {
		super();
		this.username = username;
		this.name = name;
		this.email = email;
		this.password = password;
		this.userType=userType;
	}
	
	public String getUserType() {
		return userType;
	}
	public void setUserType(String userType) {
		this.userType = userType;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
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
	@Override
	public String toString() {
		return "User [username=" + username + ", name=" + name + ", email=" + email + ", password=" + password
				+ ", userType=" + userType + "]";
	}
	public User() {
		super();
	}
	public User(String username2, String name2, String email2, String password2) {
		// TODO Auto-generated constructor stub
	}
	
	
}
