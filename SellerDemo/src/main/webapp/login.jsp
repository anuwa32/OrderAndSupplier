<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Auto Mart</title>
<link rel="stylesheet" type="text/css" href ="styles/styles1.css">
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
					<a href="#"></a> <a href="#"></a> <a href="sellerlog.jsp">sell</a> <a href="home.jsp">home</a> <a href="#">stock</a>
				</nav>
			</div>
		</header>
		<div class="banner-area">
		
		</div>
		<div class="content-area">

 

     <div class="loginbox">
   <h1>Login</h1>
      <form action="LoginServlet" method="post"> 

     <div class="textbox">
  <label for="username"><br>Username</label>
  <input type ="text" class="unam" name= "uid" placeholder="Enter username" value=""required><br><br>
  <hr/>
  </div>
  
  <div class ="textbox2">
  <label for="password"><br>Password </label> 
  <input type="password" class="unam1" name="pass" placeholder="Enter password" value=""required><br><br>
  <hr/>
  </div>
  
  <div class ="textbutton">
  <br><input type ="submit" name="submit" value ="Login" onclick="enableButton()"></input>
  </div><br>

 <div class= "textchk">
   <label>
   <input type="checkbox" id="chkbx"  name="checkbox" onclick="enableBtutton()" required>Remember me?</label><br>
    </div>

<br>
   
   
   
</form>
</div>

    <div class="fpass">
         <a href ="forgotpassword.jsp">
    <input type ="button" name="submit" value ="Forgot Password?">
    </a>
   </div>
   
    <div class="fpass1">
         <a href ="register.jsp">
    <input type ="button" name="submit" value ="Sign up">
    </a>
    </div>
    
    <div class ="insbn">
    <a href ="sell.jsp">
    <input type ="button" name="submit" value ="Back">
    </a>
    </div>
    
    </div>
    </div>
    
</body>
</html>