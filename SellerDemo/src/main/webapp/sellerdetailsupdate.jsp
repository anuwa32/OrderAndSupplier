<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@page import="java.sql.*"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Data</title>

<link rel="stylesheet" type="text/css" href ="styles/styles22.css">
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
					<a href="#"></a> <a href="#"></a> <a href="#"></a> <a href="selldetails.jsp">sellDetail</a> <a href="home.jsp">home</a>
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
      <h1>Update Details </h1>
  
  
  <form action="SellerDetUpdServlet"method="post">

    <div class="textbo">
    
    <label for="sellid"><br>Sell Id :</label>
    <input type ="text" id="sellup" name= "sellid"  value="<%=sid %>"readonly>
    
    
    </div>

    <div class="textbox">
    
    <label for="brand"><br>Brand :</label>
    <input type ="text"  id="sellup" name= "brand"  value="<%=brand %>">
    
    
    </div>
    
   
   <br>
    <div class ="textbox2">
     <label for="cate" >Category :</label>
     <input type ="text"  id="sellup" name= "cate"  value="<%=category %>">
     </div>
    
   <br>
   
    <div class ="textbox3">
    <label for="model"><br>Model :</label>
    <input type ="text"  id="sellup" name= "model"  value="<%=model %>">
    
    
    <br>
    </div>
   
    
   
    <br>
   <div class ="textbox4">
   <label for="year"><br>Manufacture year :</label>
   <input type ="text"  id="sellup" name= "year"  value="<%=myear %>"><br>
   </div>
   
   
   <div class="textbox5">
   <label for="inform"><br>Spare parts details :</label>
   <input type ="text"   id="sellup" name= "spart" value="<%=infor %>" ><br>
   </div>
    
   
    
   <div class="textbox6">
   <label for="email"><br>Email :</label>
   <input type ="text"  id="sellup" name= "email" pattern = "[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"  value="<%=bEmail %>" ><br>
   </div> 
     
      
     
     
 
      
      <div class ="textbutton">
      <br><input type ="submit" name="submit" value ="Submit" onclick="enableButton()"></input>
      </div><br>
      
      
      
     
      </form>





</div>












</div>
</div>
</body>
</html>