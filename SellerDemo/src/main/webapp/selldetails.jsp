<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@page import="java.sql.*"%>
<!DOCTYPE html>


<html>
<head>
<meta charset="ISO-8859-1">
<title>Sell details</title>

<link rel="stylesheet" type="text/css" href ="styles/styles12.css">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">

</head>
<body>



<div class="box-area">
		<header>
			<div class="wrapper">
				<div class="logo">
					<img class="img" src="images/logo.png" alt="logo image">
				</div>
				<nav>
					<a href="#"></a> <a href="#"></a> <a href="#"></a> <a href="login.jsp">Login</a><a href="home.jsp">home</a>
				</nav>
			</div>
		</header>
		<div class="banner-area">
		
		</div>
		<div class="content-area">


 <div class="sellbox">
      <h1>Sell Details </h1>
  
  
  <form action="SellerDetailsServlet"method="post">

    <div class="textbox">
    
    
    Vehicle Brand : <select name="brandd" id="sellde" onchange="this.form.submit();" required>
    <option value="" selected="selected">Select Vehicle Brand</option>
    <%
try {
   Class.forName("com.mysql.jdbc.Driver").newInstance();
   Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/automart?autoReconnect=true&useSSL=false", "root", "lk654321");
   Statement stt = con.createStatement();
   ResultSet rs = stt.executeQuery("select * from brand");

    while (rs.next()) {
   %>
   <option value="<%=rs.getString("bname") %>"
   <%
   if (request.getParameter("brand") != null) {

   if (rs.getInt("bid") == Integer.parseInt(request.getParameter("brand"))) {

   out.println("selected");
  }
  }
  %>
 > <%=rs.getString("bname") %></option>
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
    
    
    <br>
    <div class="nweb">
    <a href ="newbrand.jsp">
    <input type ="button" name="submit" id ="submit" value ="Add New">
    </a>
    </div>
    
   <br>
   <br>
    <div class ="textbox2">
     <label for="cate" >Category :</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    
     
        <select name="cate" name="cate" id="sellde">
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
    <div class ="textbox3">
    
    Model : &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <select name="model1" id="sellde" onchange="this.form.submit();" required>
    <option value="" selected="selected">Select Vehicle Model</option>
    <%
try {
   Class.forName("com.mysql.jdbc.Driver").newInstance();
   Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/automart?autoReconnect=true&useSSL=false", "root", "lk654321");
   Statement stt = con.createStatement();
   ResultSet rs = stt.executeQuery("select * from model");

    while (rs.next()) {
   %>
   <option value="<%=rs.getString("mname") %>"
   <%
   if (request.getParameter("model") != null) {

   if (rs.getInt("mid") == Integer.parseInt(request.getParameter("model"))) {

   out.println("selected");
  }
  }
  %>
 > <%=rs.getString("mname") %></option>
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
   
   <br>
   
    <div class="nwem">
    <a href ="newmodel.jsp">
    <input type ="button" name="submit" id ="subm" value =" Add New">
    </a>
    </div>
   
    <br>
   <div class ="textbox4">
   <label for="year"><br>Manufacture year :</label>
   <input type ="text" id="sellde" name= "year" placeholder="Enter the year" value=""required><br>
   </div>
   
   <br>
   <div class="textbox5">
   <label for="sparepart"><br> Spare-part details  :</label>&nbsp
   <input type ="text" id="sellde" name= "spart" placeholder="enter the information"value="" required><br>
   </div>
    <br><br>
    
    
    
  
    
   <div class="textbox7">
   <label for="email"><br>Email :</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
   <input type ="text" id="sellde" name= "email" placeholder="example@gmail.com" value="" pattern = "[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" ><br>
   </div> 
     
      
     
     
 
      
      <div class ="textbutton">
      <br><input type ="submit" name="submit" id ="sub" value ="Submit" onclick="enableButton()"></input>
      </div><br>
      
      
      
     
      </form>

</div>




        <div class="stock">
        <a href ="selldetailslogin.jsp">
        <input type ="button" name="submit" value ="Enter">
        </a>
        </div>
   

</div>
</div>



    

</body>
</html>