<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Forgot password</title>
<link rel="stylesheet" type="text/css" href ="styles/styles6.css">
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








 <div class="fbox">
   <h1>Forgot Password</h1>
      <form action="ForgotpasswordServlet" method="post"> 

   <div class="textbox">
  <label for="email"><br>Enter NIC</label>&nbsp&nbsp
  <input type ="text" class ="input" name= "nic" placeholder="Enter nic" value=""required><br><br>
  </div>
  
     <div class="textbox1">
  <label for="phone number"><br>Phone number</label>
  <input type ="text" class ="input" name= "phone" placeholder="Enter your phone number" value=""required><br><br>
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

 <div class ="fobn">
    <a href ="login.jsp">
    <input type ="button" name="submit" value ="Back">
    </a>
    </div>


</div>
</div>

</body>
</html>