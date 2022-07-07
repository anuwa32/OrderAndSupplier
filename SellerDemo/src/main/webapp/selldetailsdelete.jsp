<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@page import="java.sql.*"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Data</title>

<link rel="stylesheet" type="text/css" href ="styles/styles17.css">
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
					<a href="#"></a> <a href="#"></a> <a href="#"></a> <a href="selldetails.jsp">sellDetails</a> <a href="home.jsp">home</a>
				</nav>
			</div>
		</header>
		<div class="banner-area">
		
		</div>
		<div class="content-area">


       <%
           String sid = request.getParameter("sid");
           String brand = request.getParameter("brand");
           String category = request.getParameter("category");
           String model = request.getParameter("model");
           String myear = request.getParameter("myear");
           String infor = request.getParameter("infor");
           String bEmail = request.getParameter("bemail");
       
       %>


<br>
 <div class="sellbox">
      <h1>Delete Details </h1>
  
  
  <form action="SellerDetDelServlet"method="post">

    <div class="textbo">
    
    <label for="sellid"><br>Sell Id :</label>
    <input type ="text" id="selld" name= "sellid"  value="<%=sid %>"readonly>
    </div>
    
    

    <div class="textbox">
    
    <label for="brand"><br>Brand :</label>
    <input type ="text" id="selld" name= "brand"  value="<%=brand %>"readonly>
    </div>
    
   
   
   <br>
    <div class ="textbox2">
    <label for="cate" >Category :</label>
    <input type ="text" id="selld" name= "cate"  value="<%=category %>"readonly>
    </div>
    
   <br>
   
    <div class ="textbox3">
    <label for="model"><br>Model :</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    <input type ="text" id="selld" name= "model"  value="<%=model %>"readonly>
    </div>
    
   
    
    <br>
   <div class ="textbox4">
   <label for="year"><br>Manufacture year :</label>
   <input type ="text" id="selld" name= "year"  value="<%=myear %>"readonly><br>
   </div>
   
   
   <div class="textbox5">
   <label for="inform"><br>Spare parts details :</label>
   <input type ="text" id="selld" name= "spart" value="<%=infor %>"readonly ><br>
   </div>
    
   
    
   <div class="textbox6">
   <label for="email"><br>Email :</label>
   <input type ="text"id="selld" name= "email" pattern = "[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"  value="<%=bEmail %>"readonly ><br>
   </div> 
     
      
     
     
 
      
      <div class ="textbutton">
      <br><input type ="submit" name="submit" value ="Delete" onclick="enableButton()"></input>
      </div><br>
      
      
      
     
      </form>





</div>












</div>
</div>







</body>
</html>