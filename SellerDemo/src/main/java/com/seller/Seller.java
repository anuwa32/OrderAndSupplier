package com.seller;

public class Seller {

	private int id;
	private String firstname;
	private String lastname;
	private String nic;
	private String phone;
	private String address;
	private String dob;
	private String gender;
	private String userName;
	private String password;
	
	
	public Seller(int id, String firstname, String lastname, String nic, String phone, String address, String dob,
			String gender, String userName, String password) {
		
		this.id = id;
		this.firstname = firstname;
		this.lastname = lastname;
		this.nic = nic;
		this.phone = phone;
		this.address = address;
		this.dob = dob;
		this.gender = gender;
		this.userName = userName;
		this.password = password;
	}


	public int getId() {
		return id;
	}


	public String getFirstname() {
		return firstname;
	}


	public String getLastname() {
		return lastname;
	}


	public String getNic() {
		return nic;
	}


	public String getPhone() {
		return phone;
	}


	public String getAddress() {
		return address;
	}


	public String getDob() {
		return dob;
	}


	public String getGender() {
		return gender;
	}


	public String getUserName() {
		return userName;
	}


	public String getPassword() {
		return password;
	}


	
	
	


	
	
	



}
