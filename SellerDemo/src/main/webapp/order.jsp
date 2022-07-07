<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@page import="java.sql.*"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order</title>

<link rel="stylesheet" type="text/css" href ="styles/styles18.css">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">

</head>
<body>

<div class="box-area">
		<header>
			<div class="wrapper">
				<div class="logo">
					
				</div>
				<br>
				
	
			
				<nav>
					<a href="#"></a> <a href="#"></a> <a href="home.jsp">home</a> <a href="#">stock</a> <a href="order.jsp">order</a> <a href="oderid.jsp">orderID</a>
				</nav>
			
			</div>
		</header>
		<div class="banner-area">
		
		</div>
		<div class="content-area">


                <form action="SearchDetailsServlet" method="post">
	
			     <div class="searchbar">
			   
				 <input type="text" name="search" class="search" placeholder="search vehicle brand">
				
			     
			       
                 <input type ="submit" id ="sub"  name="submit" value ="search" onclick="enableButton()"></input>
              
                      </div>
		     
			    </form>


       <div class="Orderbox">
      <h1>Order</h1>
      <form action="OrderProfileServlet" method="post"> 

    <div class="textbox">
    <label for="date"><br>Date :</label>
    <input type ="date" class="ord" id="order" name= "did" placeholder="Ex:2017-02-02" value=""required><br><br>
    </div>
    
    <div class="textbox1">
    <label for="email"><br>Email :</label>
    <input type ="text" class="ord"  id="order" pattern = "[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" name= "email" placeholder="example@gmail.com" value=""required><br><br>
    </div>
    
     <div class="textbox2">
    
    
    Vehicle Brand : &nbsp&nbsp&nbsp<select name="brandd" class="ord" id="order"  onchange="this.form.submit();" required>
    <option value="" selected="selected">Select Vehicle Brand</option>
    <%
     try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/automart?autoReconnect=true&useSSL=false", "root", "lk654321");
            Statement stt = con.createStatement();
            ResultSet rs = stt.executeQuery("select * from brandod");

        while (rs.next()) {
        %>
             <option value="<%=rs.getString("brname") %>"
        <%
           if (request.getParameter("brandod") != null) {

           if (rs.getInt("bid") == Integer.parseInt(request.getParameter("brandod"))) {

           out.println("selected");
      }
      }
        %>
      > <%=rs.getString("brname") %></option>
       <%
       }
        con.close();
        rs.close();
    }
        catch (Exception e){
        e.printStackTrace();
        System.out.println("error");
    }
     %>
    </select>
    </div>
    
    
    <div class="nweb">
    <a href ="newbrandorder.jsp">
    <input type ="button" name="submit" value ="New">
    </a>
    </div>
    <br>
    <br>
    <div class ="textbox3">
     <label for="cate" >Category :</label>&nbsp&nbsp
    
     
        <select class="ord" name="cate" id="order"> 
         <option value="Car">Car</option>
         <option value="Van">Van</option>
         <option value="Bus">Bus</option>
         <option value="Cab">Cab</option>
         <option value="Bike">Bike</option>
         <option value="Jeep">Jeep</option>
         <option value="Threewheel">Three-wheel</option>
          <option value="lorry">Lorry</option>
        </select>
    </div>
    
    <br>
    <br>
    <div class ="textbox4"> 
    
    Model : &nbsp&nbsp <select name="model" class="ord" id="order"  onchange="this.form.submit();" required>
    <option value="" selected="selected">Select Vehicle Model</option>
    <%
       try {
              Class.forName("com.mysql.jdbc.Driver").newInstance();
              Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/automart?autoReconnect=true&useSSL=false", "root", "lk654321");
              Statement stt = con.createStatement();
              ResultSet rs = stt.executeQuery("select * from modelod");

        while (rs.next()) {
         %>
       <option value="<%=rs.getString("mdname") %>"
         <%
         if (request.getParameter("modelod") != null) {

         if (rs.getInt("mid") == Integer.parseInt(request.getParameter("modelod"))) {

         out.println("selected");
       }
       }
       %>
       > <%=rs.getString("mdname") %></option>
       <%
       }
       con.close();
       rs.close();
       }
         catch (Exception e){
         e.printStackTrace();
         System.out.println("error");
       }
       %>
      </select>
    
    
    <br>
    </div>
    
     
    <div class="nwem">
    <a href ="newmodelorder.jsp">
    <input type ="button" name="submit" value ="New">
    </a>
    </div>
    
    <br>
    <div class ="textbox5">
    <label for="year"><br>Manufacture year :</label>&nbsp&nbsp&nbsp&nbsp
    <input type ="text" id="order" class="ord" name= "year" placeholder="Ex:2018" value=""required><br>
    </div>
    <br>
    <br>
    <div class ="textbox6"> 
    
    Spare part :&nbsp&nbsp&nbsp <select name="spare" class="ord"  id="order" onchange="this.form.submit();" required>
    <option value="" selected="selected">Select Vehicle Model</option>
    <%
       try {
              Class.forName("com.mysql.jdbc.Driver").newInstance();
              Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/automart?autoReconnect=true&useSSL=false", "root", "lk654321");
              Statement stt = con.createStatement();
              ResultSet rs = stt.executeQuery("select * from sparep");

        while (rs.next()) {
         %>
       <option value="<%=rs.getString("spname") %>"
         <%
         if (request.getParameter("sparep") != null) {

         if (rs.getInt("spid") == Integer.parseInt(request.getParameter("sparep"))) {

         out.println("selected");
       }
       }
       %>
       > <%=rs.getString("spname") %></option>
       <%
       }
       con.close();
       rs.close();
       }
         catch (Exception e){
         e.printStackTrace();
         System.out.println("error");
       }
       %>
      </select>
    
    
    <br>
    </div>
    
    <div class="nwes">
    <a href ="newspare.jsp">
    <input type ="button" name="submit" value ="New">
    </a>
    </div>
    
    <br>
    
    <div class ="textbox7">
    <label for="qty"><br>Quantity :</label>&nbsp&nbsp&nbsp&nbsp
    <input type ="text" name= "qtyt" class="ord" id="order" placeholder="Ex:-1" value=""required><br>
    </div>
    
    
    <div class ="textbox8">
    <label for="name"><br>Order Name :</label>&nbsp&nbsp&nbsp
    <input type ="text" name= "fname" class="ord" id="order" placeholder="xxxxxxxx" value=""required><br>
    </div>
    
    
    
    <div class ="textbox9">
    <label for="item"><br>Item No :</label>&nbsp&nbsp&nbsp&nbsp&nbsp
    <input type ="text" name= "item"  class="ord" id="order" placeholder="STxxx" value=""required><br>
    </div>
    
    <div class ="textbox10">
    <label for="status"><br>Status :</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    <input type ="text" name= "status"  class="status" id="order" placeholder="xxxxx" value=""required><br>
    </div>
    
    
    <div class ="textbutton">
    <br><input type ="submit" name="submit" class="ord" value ="Submit" onclick="enableButton()"></input>
    </div><br>
    </form>
    </div>
    
    
    <div class="stock">
    <a href ="#">
    <input type ="button" name="submit" value ="Stock">
    </a>
    </div>
    
    
    <div class="report">
    <a href="reportbutton.jsp">
    <input type ="button" name="submit" value ="Reports" onclick="enableButton()"></input>
    </a>
    </div>

    
    

                 


</div>
</div>



</body>
</html>