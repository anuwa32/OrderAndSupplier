<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Enter Order Id</title>
<link rel="stylesheet" type="text/css" href ="styles/orderid.css">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
</head>
<body>


<div class="box-area">
		<header>
			<div class="wrapper">
				<div class="logo">
					<img class="img" src="images/logo.png" alt="logo image">
				</div>
				<br>
				
			
				
				<nav>
					<a href="#"></a> <a href="#"></a> <a href="home.jsp">home</a> <a href="#">stock</a> <a href="order.jsp">order</a>
				</nav>
				
				
			</div>
		</header>
		<div class="banner-area">
		
		</div>
		<div class="content-area">




       <div class="orderidbox">
       <h1>Order Id</h1>
      
       <br>
         <form action="OrderIdServlet" method="post">
      
      <div class="textbox">
      <label for="oid"><br>Enter Order Id  :</label>
      <input type ="text" name= "oid" id="reg" placeholder="Enter the id"   required><br>
      </div>
      
      
      <div class ="textbutton">
      <br><input type ="submit" name="submit" id="sub" value ="Submit" onclick="enableButton()"></input>
      </div><br>
      
      
      
      <div class ="rsbn">
      <a href ="order.jsp">
      <input type ="button" name="submit" value ="Order">
      </a>
      </div>
      
      
      
      </form>
      
      
  </div>
      




</div>
</div>

</body>
</html>