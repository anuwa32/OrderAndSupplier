<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>RegisterFrom</title>

<link rel="stylesheet" type="text/css" href ="styles/styles2.css">
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
  
  
  
  
  
  
  
  
  
<div class="registerbox">
      <h1>Registration Form</h1>
  
  
  <form action="Registerinsert"method="post" autocomplete="on">

  <div class="textbox">
  <label for="firstusername"><br>First Name</label>
  <input type ="text" id= "reg" name= "name" placeholder="Enter your firstname" value=""required><br>
  </div>
  
   <div class ="textbox1">
   <label for="lastusername"><br>Last Name</label>
   <input type ="text" id= "reg" name= "lname" placeholder="Enter your lastname" value=""required><br>
   </div>
   
    <div class ="textbox2">
   <label for="email"><br>NIC  </label>&nbsp&nbsp
   <input type ="text" id= "reg" pattern="[0-9]{9}[V-v]{1}" name= "nic" placeholder="Enter your nic" value=""required><br>
   </div>
   
    <div class ="textbox3">
    <label for="phone number"><br>Phone Number</label>
    <input type ="text" id= "reg" name= "phone" placeholder="Enter your phone number" pattern="[0-9]{10}" value=""required><br>
    </div>
   
    <div class ="textbox4">
    <label for="address"><br>Address</label>
    <input type ="text" id= "reg" name= "address" placeholder="Enter your home address" value=""required><br>
    </div>
   
   
     <div class ="textbox5">
     <label for="dob"><br>Date Of Birth</label>
     <input type ="Date" id= "reg" name= "dob" placeholder="Enter your dob" value=""required><br>
     </div>
     
      <div class ="textbox6">
     <label for="gender"><br>Gender</label>
     <input type ="text" id= "reg" name= "gender" placeholder="Male/Female" value=""required><br>
     </div>
     
     
     
      <div class ="textbox7">
      <label for="username"><br>User Name</label>
      <input type ="text" id= "reg" name= "uid" placeholder="Enter your username" value=""required><br>
      </div>
     
     
      <div class ="textbox8">
      <label for="password"><br>Password</label>
      <input type ="password" id= "reg" name= "psw" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" 
        title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"  placeholder="Enter your password" value=""required><br>
      </div>
      
      
      <div class ="textbutton">
      <br><input type ="submit" name="submit" value ="Submit" onclick="enableButton()"></input>
      </div><br>
      
      
      
     
      </form>



</div>
    <div class ="insbn">
    <a href ="login.jsp">
    <input type ="button" name="submit" value ="Back">
    </a>
    </div>



</div>
</div>
</body>
</html>