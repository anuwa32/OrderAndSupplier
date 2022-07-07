package com.seller;

public class Order {
	
    private int oid;
    private String date;
    private String bemail;
    private String vbrand;
    private String category;
    private String model;
    private String myear;
    private String scategory;
    private String qty;
    private String name;
    private String item_no;
    private String status;
    
    
	public Order(int oid, String date, String bemail, String vbrand, String category, String model, String myear,
			String scategory, String qty, String name, String item_no , String status) {
	
		this.oid = oid;
		this.date = date;
		this.bemail = bemail;
		this.vbrand = vbrand;
		this.category = category;
		this.model = model;
		this.myear = myear;
		this.scategory = scategory;
		this.qty = qty;
		this.name = name;
		this.item_no = item_no;
		this.status = status;
	}


	public int getOid() {
		return oid;
	}


	public String getDate() {
		return date;
	}


	public String getBemail() {
		return bemail;
	}


	public String getVbrand() {
		return vbrand;
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


	public String getScategory() {
		return scategory;
	}


	public String getQty() {
		return qty;
	}


	public String getName() {
		return name;
	}


	public String getItem_no() {
		return item_no;
	}

    
	public String getStatus() {
		return status;
	}
	
	





    
    

}
