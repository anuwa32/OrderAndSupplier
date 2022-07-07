<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Profile</title>
<link rel="stylesheet" type="text/css" href ="styles/styles3.css">
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






   <%
           String id = request.getParameter("id");
           String firstname = request.getParameter("firstname");
           String lastname = request.getParameter("lastname");
           String nic = request.getParameter("nic");
           String phone = request.getParameter("phone");
           String address= request.getParameter("address");
           String dob =request.getParameter("dob");
           String gender = request.getParameter("gender");
           String userName = request.getParameter("username");
           String password= request.getParameter("password");
   %>

<div class ="updatebox">
<h1>Profile Update</h1>

<form action="UpdateServlet" method="post">

  <div class="textbox">
  <label for="firstusername"><br>Customer ID:</label>
  <input type ="text" id="update" name= "cusid" value="<%= id%>" readonly><br>
  </div>
  
  <div class="textbox1">
  <label for="firstusername"><br>First Name:</label>
  <input type ="text" id="update" name= "name" value="<%=firstname%>"><br>
  </div>
  
  <div class="textbox2">
  <label for="firstusername"><br>Last Name:</label>
  <input type ="text" id="update" name= "lname" value="<%=lastname %>"><br>
  </div>
  
  <div class="textbox3">
  <label for="firstusername"><br>NIC:</label>&nbsp&nbsp
  <input type ="text"id="update" pattern="[0-9]{9}[V-v]{1}" name= "nic" value="<%=nic %>"><br>
  </div>
  
  <div class="textbox4">
  <label for="firstusername"><br>Phone Number:</label>
  <input type ="text" id="update" pattern="[0-9]{10}" name= "phone" value="<%=phone %>"><br>
  </div>
  
  <div class="textbox5">
  <label for="firstusername"><br>Address;</label>
  <input type ="text" id="update" name= "address" value="<%=address%>"><br>
  </div>
  
  <div class="textbox6">
  <label for="firstusername"><br>Date Of Birth:</label>
  <input type ="Date" id="update" name= "dob" value="<%=dob%>"><br>
  </div>
  
  <div class="textbox7">
  <label for="firstusername"><br>Gender:</label>
  <input type ="text" id="update" name= "gender" value="<%=gender %>"><br>
  </div>
  
  <div class="textbox8">
  <label for="firstusername"><br>User Name:</label>
  <input type ="text" id="update" name= "uname" value="<%=userName %>"><br>
  </div>
  
  <div class="textbox9">
  <label for="firstusername"><br>Password:</label>
  <input type ="password" id="update" name= "pass" value="<%=password %>"><br>
  </div>
  
   <div class ="textbutton">
   <br><input type ="submit" name="submit" value ="Update Data" onclick="enableButton()"></input>
   </div><br>



</form>
    


</div>


</div>
</div>
</body>
</html>