package com.seller;

import java.sql.Connection;
//import java.sql.DriverManager;
//import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class SellerDBUtil {
	
	private static Connection con =null;
	private static Statement stn =null;
	private static ResultSet re =null;
	private static boolean isCheck;
	
	

	
	
	
	//login page
	
	public static boolean validate(String username,String password)
	{
		try {
			con=DBConnect.getConnection();
			stn =con.createStatement();
			
			String sql ="Select * from seller where username='"+username+"' and password='"+password+"'";
			re= stn.executeQuery(sql);
			
			if(re.next())
			{
				isCheck=true;
			}
			else
			{
				isCheck=false;
			}
			
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return isCheck;
	}
	
	
	
	
	
	
	public static List<Seller> getSeller(String username)
	{
		
		
		ArrayList<Seller> us = new ArrayList<>();
		
		
		
		
		try {
			con=DBConnect.getConnection();
			stn = con.createStatement();
			String sql="select * from seller where username ='"+username+"'";
			re=stn.executeQuery(sql);
			
			
			while(re.next())
			{
				int id= re.getInt(1);
				String firstname=re.getString(2);
				String lastname=re.getString(3);
				String nic= re.getString(4);
				String phone = re.getString(5);
				String address = re.getString(6);
				String dob=re.getString(7);
				String gender=re.getString(8);
				String userU =re.getString(9);
				String passU = re.getString(10);
				
				
				Seller u = new Seller(id,firstname,lastname,nic,phone,address,dob,gender,userU,passU);   //pass the  values to constructor
				us.add(u);
			}
			
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		
		
		return us;
	}
	
	
	
	
	
	
	
	
	//insert customer
	
	public static boolean insertseller(String name,String lname,String nic,String phone,String address,String dob,String gender,String username,String password)
	{
		
		boolean isCheck=false;
		 
		
		try {
			con =DBConnect.getConnection();
			stn =con.createStatement();
			
			
			String sql = "insert into seller values(0,'"+name+"','"+lname+"','"+nic+"','"+phone+"','"+address+"','"+dob+"','"+gender+"','"+username+"','"+password+"')";
			int rs = stn.executeUpdate(sql);
			
			
			if(rs > 0)
			{
				isCheck= true;
				
				
			}else
				
				
			{
				isCheck = false;
			}
			
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		
		return isCheck;
	}
	
	
	
	
	
	
	
	//update customer
	
	public static boolean updateseller(String id,String firstname,String lastname,String nic,String phone,String address,String dob,String gender,String username,String password)
	{
		
		try {
			
			con = DBConnect.getConnection();
			stn= con.createStatement();
			
			String sql ="update seller set firstname='"+firstname+"',lastname='"+lastname+"',nic='"+nic+"',phone='"+phone+"',address='"+address+"',dob='"+dob+"',gender='"+gender+"',username='"+username+"',password='"+password+"'"+"where id ='"+id+"'";
			
			
			int rs= stn.executeUpdate(sql);
			
			
			if(rs>0) {
				
				isCheck =true;
				
			}else {
				
				isCheck =false;
			}
			
			
			
		}catch(Exception e) {
			
			e.printStackTrace();
		}
		
		
		
		
		return isCheck;
	}
	
	
	
	
	
	//retrieve part
	
	public static List<Seller> getSellerDetails(String Id)
	
	{
		int conID =Integer.parseInt(Id);  //wrapper  class
		
		
		ArrayList<Seller> us1 = new ArrayList<>(); //all customer details
		
		try {
			
			 con = DBConnect.getConnection();
			 stn = con.createStatement();
			 
			 
			 String sql ="select * from seller where id='"+conID+"'"; 
			 
			 re= stn.executeQuery(sql);
			
			 while(re.next())   // assign variables
			 {
				 
				 
				 
				 int id =re.getInt(1);
				 String firstname =re.getString(2);
				 String lastname = re.getString(3);
				 String nic = re.getString(4);
				 String phone = re.getString(5);
				 String address = re.getString(6);
				 String dob = re.getString(7);
				 String gender = re.getString(8);
				 String username = re.getString(9);
				 String password =re.getString(10);
				 
				 
				 Seller u = new Seller(id,firstname,lastname,nic,phone,address,dob,gender,username,password);
				 us1.add(u);
				 
				 
			 }
			
			
		}catch(Exception e) {
			
			e.printStackTrace();
		}
		
		
		
		return us1;
	}
	
	
	
	
	
	
	
	
	
	//delete customer
	
	public static boolean deleteseller(String id)
	{
		
		int convID = Integer.parseInt(id);  //wrapper class
		
		
		
		
		 try {
			     con = DBConnect.getConnection();
			     stn = con.createStatement();
			     
			     
			     String sql ="delete from seller where id ='"+convID+"'";
			     
			     int rt =stn.executeUpdate(sql);   //create Result set
			     
			     if(rt >0)
			     {
			    	 isCheck=true;
			    	 
			     }else {
			    	 
			    	  isCheck=false;
			     }
			     
			 
			 
		 }catch(Exception e)
		 
		 {
			 e.printStackTrace();
			 
		 }
		
		 
		 
		 
		return isCheck;
	}
	
	
	
	
	
	
	
	
	//forgot password
	
	
	public static boolean validate1(String nic,String phone)
	{
		try {
			con=DBConnect.getConnection();
			stn =con.createStatement();
			
			
			String sql ="Select * from seller where nic='"+nic+"' and phone='"+phone+"'";
			
			re= stn.executeQuery(sql);
			
			if(re.next())
			{
				isCheck=true;
			}
			
			else
				
			{
				isCheck=false;
			}
			
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		
		return isCheck;
	}
	
	
	
	
	
	
	
	//retrieve part
	
	public static List<Seller> getCustomer1(String nic)
	{
		
		ArrayList<Seller> us = new ArrayList<>();
		
		
		try {
			
			con=DBConnect.getConnection();
			stn = con.createStatement();
			
			String sql="select * from seller where nic ='"+nic+"'";
			
			re=stn.executeQuery(sql);
			
			while(re.next())
			{
				
				
				
				int id= re.getInt(1);
				String firstname=re.getString(2);
				String lastname=re.getString(3);
				String nicU= re.getString(4);
				String phoneU = re.getString(5);
				String address = re.getString(6);
				String dob=re.getString(7);
				String gender=re.getString(8);
				String userU =re.getString(9);
				String passU = re.getString(10);
				
				Seller u = new Seller(id,firstname,lastname,nicU,phoneU,address,dob,gender,userU,passU);
				us.add(u);
			}
			
		}catch(Exception e)
		
		{
			e.printStackTrace();
		}
		
		
		
		
		return us;
	}
	
	
	
	
	
	
	
	//new brand
	
	public static boolean insertbrand(String bname)
	{
		
		
		boolean isCheck =false;
		
		//create db connection
		
		
		
		try {
			
			con=DBConnect.getConnection();
			stn = con.createStatement();
			
    		
			
			
			
    		String sql = "insert into brand values (0,'"+bname+"')";
    		
    		int rs = stn.executeUpdate(sql);
    		
    		if(rs>0)
    		{
    			isCheck=true;
    			
    			
    		}else
    			
    		{
    			isCheck=false;
    		}
			
				
		}catch(Exception e)
		
		 {
			e.printStackTrace();
		 }
		
		
		
		
		return isCheck;
	}

	
	
	
	
	// new model
	
	public static boolean insertmodel(String mname)
	{
		
		boolean isCheck =false;
		
		
		
		
		
		
		try {
			
			con=DBConnect.getConnection();
			stn = con.createStatement();
    		
    		
    		String sql = "insert into model values (0,'"+mname+"')";
    		
    		int rs = stn.executeUpdate(sql);
    		
    		if(rs>0)
    		{
    			isCheck=true;
    			
    		}else
    			
    		{
    			isCheck=false;
    		}
			
				
		}catch(Exception e)
		
		 {
			e.printStackTrace();
		 }
		
		return isCheck;
	}
	
	
	
	
	
	
	
	// seller information
	
	
	public static boolean validate3(String username,String password)
	{
		try {
			
			
			con=DBConnect.getConnection();
			stn =con.createStatement();
			
			
			String sql ="Select * from seller where username='"+username+"' and password='"+password+"'";
			
			re= stn.executeQuery(sql);
			
			if(re.next())
			{
				isCheck=true;
			}
			
			else
			{
				isCheck=false;
			}
			
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return isCheck;
	}
	
	
	
	
	
	
	public static List<Seller> getSellerS(String username)
	{
		
		ArrayList<Seller> us = new ArrayList<>();
		
		
		try {
			con=DBConnect.getConnection();
			stn = con.createStatement();
			
			
			String sql="select * from seller where username ='"+username+"'";
			
			re=stn.executeQuery(sql);
			
			
			while(re.next())
			{
				
				
				
				int id= re.getInt(1);
				String firstname=re.getString(2);
				String lastname=re.getString(3);
				String email= re.getString(4);
				String phone = re.getString(5);
				String address = re.getString(6);
				String dob=re.getString(7);
				String gender=re.getString(8);
				String userU =re.getString(9);
				String passU = re.getString(10);
				
				Seller u = new Seller(id,firstname,lastname,email,phone,address,dob,gender,userU,passU);   //pass the  values to constructor
				us.add(u);
			}
			
			
		}catch(Exception e)
		
		{
			e.printStackTrace();
		}
		
		
		
		
		return us;
	}
	
	
	
	
	
	
	//seller details insert
	
	public static boolean insertsellerb1(String brand,String category,String model, String myear, String infor,String bemail ) {
		
		
		boolean  isCheck = false;
		
		
		try {
			
			con=DBConnect.getConnection();
			stn= con.createStatement();
			
			String sql = "insert into selld values(0,'"+brand+"','"+category+"','"+model+"','"+myear+"','"+infor+"','"+bemail+"')";
			
			int rs = stn.executeUpdate(sql);
			
			if(rs>0)
			{
				isCheck = true;
			}
			
			else
			{
				isCheck = false;
			}
			
			
		}catch(Exception e)
		{
			
			e.printStackTrace();
		}
		
		
		
		return isCheck;
	}
	
	
	
	
	
	public static List<Seller1d> getSellerb1Details(String bemail){
		
		
		ArrayList<Seller1d> s1 = new ArrayList<Seller1d>();
		
		
		try {
			
			con = DBConnect.getConnection();
			stn = con.createStatement();
			
			String sql = "select *  from selld where bemail ='"+bemail+"'";
			
			re= stn.executeQuery(sql);
			
			while(re.next())
			{
				int sid = re.getInt(1);
				String brand = re.getString(2);
				String category = re.getString(3);
				String model = re.getString(4);
				String myear = re.getString(5);
				String infor = re.getString(6);
				String bEmail = re.getString(7);
				
				
				Seller1d  sd1 = new Seller1d(sid, brand, category, model, myear, infor, bEmail);
				s1.add(sd1);
				
			}
			
			
			
			
		}catch(Exception e) {
		
			e.printStackTrace();
		}
		
		return s1;
	}
	
	
	
	
	
	
	// update seller sell details
	
	public static boolean updateselldetails(String sid,String brand, String category,String model,String myear,String infor, String bemail) {
		
		
		try {
			
			con = DBConnect.getConnection();
			stn = con.createStatement();
			
			String sql = "update selld set brand ='"+brand+"',category ='"+category+"',model ='"+model+"',myear= '"+myear+"',infor = '"+infor+"',bemail='"+bemail+"'"+ "where sid ='"+sid+"'";
			int rs =stn.executeUpdate(sql);
			
			if(rs>0)
			{
				
				isCheck = true;
				
			}else {
				
				isCheck = false;
			}
				
			
		}catch(Exception e) {
			
			e.printStackTrace();
		}
		
		
		return isCheck;
		
	}
	
	
	
	
	
	
	public static  List<Seller1d> getSellerSellDetails(String Sid){
		
		
		int conId = Integer.parseInt(Sid);
		
		
		ArrayList<Seller1d> s2 = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stn = con.createStatement();
			
			String sql  ="select * from selld where sid ='"+conId+"' ";
			
			 re= stn.executeQuery(sql);
			 
			 
			while
			(re.next()) {
				
				
				int sid = re.getInt(1);
				String brand = re.getString(2);
				String category = re.getString(3);
				String model = re.getString(4);
				String myear = re.getString(5);
				String infor = re.getString(6);
				String bEmail = re.getString(7);
				
				
				Seller1d sd2 = new Seller1d(sid, brand, category, model, myear, infor, bEmail);
				s2.add(sd2);
				
				
			}
			
		}catch(Exception e) {
			
			
			e.printStackTrace();
		}
		
		return s2;
	}
	
	
	
	
	
	//delete seller sell details
	
	public static boolean deleteselldetails(String sid)
	{
		
		
		int conID = Integer.parseInt(sid);
		
		
		
		try {
			
			con = DBConnect.getConnection();
			stn = con.createStatement();
			
			String sql ="delete from selld where sid ='"+conID+"'";
			
			int rt = stn.executeUpdate(sql);
			
			
			if(rt>0)
			{
				
				isCheck = true;
			}else {
				
				
				isCheck = false;
			}
			
			
		}catch(Exception e)
		
		{
			
			e.printStackTrace();
		}
		
		return isCheck;
	}
	
	
	
	
	
	
	
	// sell id validate
	
	public static boolean validatelogid(String sid) {
		
		
		int conID = Integer.parseInt(sid);
		
		
		try {
			
			con = DBConnect.getConnection();
			stn = con.createStatement();
			
			String sql = "select * from selld where sid ='"+conID+"'";
			
			re = stn.executeQuery(sql);
			
			if(re.next()) {
				
				
				isCheck = true;
				
			}else {
				
				isCheck = false;
				
			}
			
			
		}catch(Exception e) {
			
			e.printStackTrace();
		}
		
		
		return isCheck;
	}
	
	
	
	
	
	
	public static List<Seller1d> getsellerlogid(String sid){
		
		
		int conSD = Integer.parseInt(sid);
		
		
		
		ArrayList<Seller1d> se =  new ArrayList<>();
		
		
		try {
			
			
			con = DBConnect.getConnection();
			stn = con.createStatement();
			
			
			
			String sql = "select * from selld where sid ='"+conSD+"'";
			
			
			re = stn.executeQuery(sql);
			
			while(re.next()) {
				
				int Sid = re.getInt(1);
				String brand = re.getString(2);
				String category = re.getString(3);
				String model = re.getString(4);
				String myear = re.getString(5);
				String infor = re.getString(6);
				String bEmail = re.getString(7);
				
				
				
				Seller1d sd2 = new Seller1d(Sid, brand, category, model, myear, infor, bEmail);
				se.add(sd2);
				
				
			}
			
			
		}catch(Exception e) {
			
			
			e.printStackTrace();
			
		}
		return se;
		
	}
	
	
	
	
	
	//seller id login validate
	
	
public static boolean validateloginid(String sid) {
		
		
		int conID = Integer.parseInt(sid);
		
		
		try {
			
			con = DBConnect.getConnection();
			stn = con.createStatement();
			
			String sql = "select * from selld where sid ='"+conID+"'";
			
			re = stn.executeQuery(sql);
			
			if(re.next()) {
				
				
				isCheck = true;
				
			}else {
				
				isCheck = false;
				
			}
			
			
		}catch(Exception e) {
			
			e.printStackTrace();
		}
		
		
		return isCheck;
	}
	
	
	
	
	
	
	public static List<Seller1d> getsellerloginid(String sid){
		
		
		int conSD = Integer.parseInt(sid);
		
		
		
		ArrayList<Seller1d> se =  new ArrayList<>();
		
		
		try {
			
			
			con = DBConnect.getConnection();
			stn = con.createStatement();
			
			
			
			String sql = "select * from selld where sid ='"+conSD+"'";
			
			
			re = stn.executeQuery(sql);
			
			while(re.next()) {
				
				int Sid = re.getInt(1);
				String brand = re.getString(2);
				String category = re.getString(3);
				String model = re.getString(4);
				String myear = re.getString(5);
				String infor = re.getString(6);
				String bEmail = re.getString(7);
				
				
				
				Seller1d sd2 = new Seller1d(Sid, brand, category, model, myear, infor, bEmail);
				se.add(sd2);
				
				
			}
			
			
		}catch(Exception e) {
			
			
			e.printStackTrace();
			
		}
		return se;
		
	}
	
	
	
	
	
	
	//new brand order
	
	public static boolean insertbrandorder(String brname)
	{
		
		boolean isCheck =false;
		
		
		
		
		
		
		try {
			
			
			con = DBConnect.getConnection();
    		
    		stn = con.createStatement();
    		
    		String sql = "insert into brandod values (0,'"+brname+"')";
    		
    		int rs = stn.executeUpdate(sql);
    		
    		if(rs>0)
    			
    		{
    			isCheck =true;
    			
    		}else
    		{
    			
    			isCheck =false;
    		}
			
				
		}catch(Exception e)
		
		 {
			e.printStackTrace();
		 }
		
		return isCheck;
	}
	
	
	
	
	
	
	
	//new model order
	
	
	public static boolean insertmodelorder(String mdname)
	{
		
		boolean isCheck =false;
		
		
		
		
		
		try {
			
			
			
    		con = DBConnect.getConnection();
    		
    		stn = con.createStatement();
    		
    		String sql = "insert into modelod values (0,'"+mdname+"')";
    		
    		int rs = stn.executeUpdate(sql);
    		
    		if(rs>0)
    		{
    			
    			isCheck=true;
    			
    		}else
    			
    		{
    			isCheck=false;
    		}
			
				
		}catch(Exception e)
		
		 {
			e.printStackTrace();
		 }
		
		return isCheck;
	}
	
	
	
	
	
	
	//new spare order
	

	public static boolean insertspareorder(String spname)
	{
		
		boolean isCheck =false;
		
		
		
		
		
		try {
			
    		con = DBConnect.getConnection();
    		
    		stn = con.createStatement();
    		
    		String sql = "insert into sparep values (0,'"+spname+"')";
    		
    		int rs = stn.executeUpdate(sql);
    		
    		if(rs>0)
    			
    		{
    			isCheck=true;
    			
    		}else
    			
    		{
    			isCheck=false;
    			
    		}
			
				
		}catch(Exception e)
		
		 {
			e.printStackTrace();
		 }
		
		return isCheck;
	}
	
	
	
	
	
	
	
	
	//search
	
    public static boolean searchdetails(String brand) {
		
		
		
		try {
			
			con = DBConnect.getConnection();
			stn = con.createStatement();
			
			String sql = "select * from selld where brand ='"+brand+"'";
			
			re = stn.executeQuery(sql);
			
			if(re.next()) {
				
				
				isCheck = true;
				
			}else {
				
				isCheck = false;
				
			}
			
		}catch(Exception e) {
			
			e.printStackTrace();
		}
		
		return isCheck;
	}
	
	
    


	public static List<Seller1d> getsearchdetails(String brand){
		
		
		
		ArrayList<Seller1d> sb =  new ArrayList<>();
		
		
		try {
			
			
			con = DBConnect.getConnection();
			stn = con.createStatement();
			
			String sql = "select * from selld where brand ='"+brand+"'";
			
			re = stn.executeQuery(sql);
			
			
			while(re.next()) {
				
				int sid = re.getInt(1);
				String brandd = re.getString(2);
				String category = re.getString(3);
				String model = re.getString(4);
				String myear = re.getString(5);
				String infor = re.getString(6);
				String bEmail = re.getString(7);
				
				
				
				Seller1d sd2 = new Seller1d(sid,brandd, category, model, myear, infor, bEmail);
				sb.add(sd2);
				
				
			}
			
			
		}catch(Exception e) {
			
			
			e.printStackTrace();
			
		}
		return sb;
		
	}
	
	
	
	
	
	
	
	///order id validation
	
     public static boolean validateorderid(String oid) {
    	 
		
		int conOID = Integer.parseInt(oid);
		
		
		
		try {
			
			con = DBConnect.getConnection();
			stn = con.createStatement();
			
			String sql = "select * from automart.order where oid ="+conOID;
			
			re = stn.executeQuery(sql);
			
			
			if(re.next()) {
				
				
				isCheck = true;
			}else {
				
				
				isCheck = false;
				
			}
			
		}catch(Exception e) {
			
			
			e.printStackTrace();
		}
		
		return isCheck;
	}
	
	
     
     
     
     
     
     
	public static List<Order> getorderid(String oid){
		
		
		
		int conOSD = Integer.parseInt(oid);
		
		
		
		ArrayList<Order> oe =  new ArrayList<>();
		
		
		
		try {
			
			
			con = DBConnect.getConnection();
			stn = con.createStatement();
			
			String sql = "select * from automart.order where oid ='"+conOSD+"'";
			
			
			re = stn.executeQuery(sql);
			
			while(re.next()) {
				
				
				int Oid = re.getInt(1);
				String date = re.getString(2);
				String bemail = re.getString(3);
				String vbrand = re.getString(4);
				String category = re.getString(5);
				String model = re.getString(6);
				String myear = re.getString(7);
				String scategory = re.getString(8);
				String qty = re.getString(9);
				String name = re.getString(10);
				String item_no = re.getString(11);
				String status = re.getString(12);
				
				
				
				Order od2 = new Order(Oid, date, bemail, vbrand, category, model, myear, scategory, qty, name, item_no,status);
				oe.add(od2);
				
				
			}
			
			
		}catch(Exception e) {
			
			e.printStackTrace();
		}
		
		
		
		return oe;
		
	}
	
	
	
	
	
	
	
	// order insert
	
	public static boolean orderdetails(String date,String bemail,String vbrand,String category, String model,String myear, String scategory, String qty,String name,String item_no, String status) {
		
		
		
		boolean isCheck = false;
		
		
		
		try {
			
			
			con= DBConnect.getConnection();
			stn = con.createStatement();
			
		
			String sql ="insert into automart.order values(0,'"+date+"','"+bemail+"','"+vbrand+"','"+category+"','"+model+"','"+myear+"','"+scategory+"','"+qty+"','"+name+"','"+item_no+"','"+status+"')";
			int re =stn.executeUpdate(sql);
			
			
			if(re>0) {
				
				
				isCheck = true;
				
			}else {
				
				
				isCheck = false;
			}
			
			
		}catch(Exception e) {
			
			
			e.printStackTrace();
		}
		
		
		
		return isCheck;
	}
	
	
	
	
	
	
	

	public static List<Order> getorderDetails(String name){
		
		
		
		ArrayList<Order> or1 = new ArrayList<>();
		
		
		try {
			
			
			con = DBConnect.getConnection();
			stn = con.createStatement();
			
			String sql = "select *  from automart.order where name ='"+name+"'";
			re= stn.executeQuery(sql);
			
			
			while(re.next())
			{
				
				int oid = re.getInt(1);
				String date = re.getString(2);
				String bemail = re.getString(3);
				String vbrand = re.getString(4);
				String category = re.getString(5);
				String model = re.getString(6);
				String myear = re.getString(7);
				String scategory = re.getString(8);
				String qty = re.getString(9);
				String nAme = re.getString(10);
				String item_no = re.getString(11);
				String status = re.getString(12);
				
				
				
				Order odc = new Order(oid, date, bemail, vbrand, category, model, myear, scategory, qty, nAme, item_no,status);
				or1.add(odc);
			}
			
			
			
			
		}catch(Exception e) {
			
		
			e.printStackTrace();
		}
		
		
		
		return or1;
	}
	
	
	
	
	
	
	
	
	//order details update
	
	public static boolean updateorder(String oid, String date,String bemail, String vbrand,String category, String model,String myear,String scategory,String qty,String name,String item_no,String status) {
		
		
		
		try {
			
			
			con = DBConnect.getConnection();
			stn = con.createStatement();
			
			
			
			String sql ="update automart.order  set date='"+date+"',bemail='"+bemail+"',vbrand='"+vbrand+"',category ='"+category+"',model='"+model+"',myear='"+myear+"',scategory='"+scategory+"',qty='"+qty+"',name='"+name+"',item_no='"+item_no+"',status='"+status+"'"+"where oid='"+oid+"'";
			int re = stn.executeUpdate(sql);
			
			
			if(re>0) {
				
				
				isCheck= true;
				
				
			}else {
				
				isCheck= false;
			}
			
		}catch(Exception e) {
			
			
			e.printStackTrace();
			
		}
		
		
		return isCheck;
	}
	
	
	
	
	
	
	public static List<Order> getupdateorderDetails(String Oid){
		
		
		int CnOID = Integer.parseInt(Oid);
		
		
		ArrayList<Order> oe = new ArrayList<>();
		
		
		try {
			
			con= DBConnect.getConnection();
			stn = con.createStatement();
			
			
			String sql = "select * from automart.order where OID='"+CnOID+"'";
			re= stn.executeQuery(sql);
			
			while(re.next()) {
				
				
				int oid = re.getInt(1);
				String date = re.getString(2);
				String bemail = re.getString(3);
				String vbrand = re.getString(4);
				String category = re.getString(5);
				String model = re.getString(6);
				String myear = re.getString(7);
				String scategory = re.getString(8);
				String qty = re.getString(9);
				String name = re.getString(10);
				String item_no = re.getString(11);
				String status = re.getString("status");
				
				
				
				Order o = new Order(oid, date, bemail, vbrand, category, model, myear, scategory, qty, name, item_no,status);
				oe.add(o);
			}
			
			
		}catch(Exception e) {
			
			
			e.printStackTrace();
		}
		
		
		return oe;
	}
	
	
	
	
	
	
	
	//cancel the order
	
	
	
	public static boolean deleteorder(String oid) {
		
		int COdel = Integer.parseInt(oid);
		
		try {
			
			con = DBConnect.getConnection();
			stn = con.createStatement();
			
			String sql ="delete from automart.order where oid ='"+COdel+"'";
			int re = stn.executeUpdate(sql);
			
			if(re>0) {
				
				isCheck = true;
				
			}else {
				
				isCheck = false;
			}
			
			
		}catch(Exception e) {
			
			e.printStackTrace();
		}
		
		
		
		
		return isCheck;
	}
	
	
	
	
	
	
	
	// report generate order search
	
	public static boolean orderreport(String date, String vbrand) {
		
		try {
			
			con = DBConnect.getConnection();
			stn = con.createStatement();
			
			String sql = " select * from automart.order where date = '"+date+"' and vbrand = '"+vbrand+"'";
			
			re = stn.executeQuery(sql);
			
			if(re.next()) {
				
				isCheck = true;
				
			}else {
				
				isCheck = false;
			}
			
			
		}catch(Exception e) {
			
			e.printStackTrace();
			
		}
		
		return isCheck;
	}
	
	
	
	
	public static List<Order> getreportdetails(String date,String vbrand){
		
		
		ArrayList<Order> os = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stn = con.createStatement();
			
			String sql = "select * from automart.order where date ='"+date+"' and vbrand = '"+vbrand+"'";
			
			re = stn.executeQuery(sql);
			
			while(re.next()) {
				
				int oid = re.getInt(1);
				String daTe = re.getString(2);
				String bemail = re.getString(3);
				String vBrand = re.getString(4);
				String category = re.getString(5);
				String model = re.getString(6);
				String myear = re.getString(7);
				String scategory = re.getString(8);
				String qty = re.getString(9);
				String name = re.getString(10);
				String item_no = re.getString(11);
				String status = re.getString(12);
				
				Order os1 = new Order(oid, daTe, bemail, vBrand, category, model, myear, scategory, qty, name, item_no, status);
				os.add(os1);
				
				
			}
			
			
			
		}catch(Exception e) {
			
			e.printStackTrace();
			
		}
		return os;
		
		
	}
	
	
	
	
	
	
	
	
	// monthly generate report
	
	
 public static boolean ordermonthreport(String date) {
		
		try {
			
			con = DBConnect.getConnection();
			stn = con.createStatement();
			
			String sql = "SELECT * FROM automart.order Where Month(date)=MONTH(NOW()) && YEAR(date)=year(now())";
			
			re = stn.executeQuery(sql);
			
			if(re.next()) {
				
				isCheck = true;
				
			}else {
				
				isCheck = false;
			}
			
			
		}catch(Exception e) {
			
			e.printStackTrace();
			
		}
		
		return isCheck;
	}
	
	
	
 
  
	
	public static List<Order> getmonthreportdetails(String date){
		
		
		ArrayList<Order> os = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stn = con.createStatement();
			
			String sql = "SELECT * FROM automart.order Where Month(date)=MONTH(NOW()) && YEAR(date)=year(now())";
			
			re = stn.executeQuery(sql);
			
			while(re.next()) {
				
				int oid = re.getInt(1);
				String daTe = re.getString(2);
				String bemail = re.getString(3);
				String vBrand = re.getString(4);
				String category = re.getString(5);
				String model = re.getString(6);
				String myear = re.getString(7);
				String scategory = re.getString(8);
				String qty = re.getString(9);
				String name = re.getString(10);
				String item_no = re.getString(11);
				String status = re.getString(12);
				
				Order os1 = new Order(oid, daTe, bemail, vBrand, category, model, myear, scategory, qty, name, item_no, status);
				os.add(os1);
				
				
			}
			
			
			
		}catch(Exception e) {
			
			e.printStackTrace();
			
		}
		return os;
		
		
	}
	
	
	
	
	
	
	
	
	
	//previous month report
	
	
	
    public static boolean orderpreviousmonthreport() {
		
		try {
			
			con = DBConnect.getConnection();
			stn = con.createStatement();
			
			String sql = "SELECT * FROM automart.order Where Month(date)=MONTH(NOW())-1 && YEAR(date)=year(now())";
			
			re = stn.executeQuery(sql);
			
			if(re.next()) {
				
				isCheck = true;
				
			}else {
				
				isCheck = false;
			}
			
			
		}catch(Exception e) {
			
			e.printStackTrace();
			
		}
		
		return isCheck;
	}
	
	
	
	
    
	public static List<Order> getpreviousmonthreportdetails(){
		
		
		ArrayList<Order> os = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stn = con.createStatement();
			
			String sql = "SELECT * FROM automart.order Where Month(date)=MONTH(NOW())-1 && YEAR(date)=year(now())";
			
			re = stn.executeQuery(sql);
			
			while(re.next()) {
				
				int oid = re.getInt(1);
				String daTe = re.getString(2);
				String bemail = re.getString(3);
				String vBrand = re.getString(4);
				String category = re.getString(5);
				String model = re.getString(6);
				String myear = re.getString(7);
				String scategory = re.getString(8);
				String qty = re.getString(9);
				String name = re.getString(10);
				String item_no = re.getString(11);
				String status = re.getString(12);
				
				Order os1 = new Order(oid, daTe, bemail, vBrand, category, model, myear, scategory, qty, name, item_no, status);
				os.add(os1);
				
				
			}
			
			
			
		}catch(Exception e) {
			
			e.printStackTrace();
			
		}
		return os;
		
		
	}
	
	
	
	
	
	
	
}
