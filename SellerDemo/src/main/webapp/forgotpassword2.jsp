<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Forgot Password 2</title>
<link rel="stylesheet" type="text/css" href ="styles/styles8.css">
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
					<a href="#"></a> <a href="#"></a> <a href="#"></a> <a href="home.jsp">home</a> <a href="login.jsp">login</a>
				</nav>
			</div>
		</header>
		<div class="banner-area">
		
		</div>
		<div class="content-area">









<div class="f2box">
   <h1>Forgot Password</h1>
      <form action="Forgotpassword2Servlet" method="post"> 


  <div class="textbox1">
  <label for="email"><br>Re Enter NIC</label>&nbsp&nbsp
  <input type ="text" class="input" name= "nic" placeholder="Enter your nic" value=""required><br><br>
  </div>

  <div class="textbox">
  <label for="password"><br>Enter password</label>
  <input type ="password" class="input" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" 
    title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"  name= "pass" placeholder="Enter your new password" value=""required><br><br>
  </div>
  
  
  
  
  
    
  
  <br><br>
  
  <div class="clic">
  <label>
   <input type="checkbox" id="chkbx"  name="checkbox" onclick="enableBtutton()" required>Accept privacy policy and terms?</label><br>
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