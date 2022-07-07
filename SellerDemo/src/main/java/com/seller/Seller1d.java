package com.seller;

public class Seller1d {

	private int sid;
	private String brand;
	private String category;
	private String model;
	private String myear;
	private String infor;
	private String bEmail;
	
	public Seller1d(int sid, String brand, String category, String model, String myear, String infor, String bEmail) {
	
		this.sid = sid;
		this.brand = brand;
		this.category = category;
		this.model = model;
		this.myear = myear;
		this.infor = infor;
		this.bEmail = bEmail;
	}

	public int getSid() {
		return sid;
	}

	public String getBrand() {
		return brand;
	}

	public String getCategory() {
		return category;
	}

	public String getModel() {
		return model;
	}

	public String getMyear() {
		return myear;
	}

	public String getInfor() {
		return infor;
	}

	public String getbEmail() {
		return bEmail;
	}


	

	
	
	
}
