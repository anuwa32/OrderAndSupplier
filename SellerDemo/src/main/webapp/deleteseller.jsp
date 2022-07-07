<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">


<title>Delete Account</title>
<link rel="stylesheet" type="text/css" href ="styles/styles5.css">
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
   
   <div class ="deletebox">
       <h1>Profile Delete</h1>

  <form action="DeleteCusServlet" method="post">

  <div class="textbox">
  <label for="firstusername"><br>Customer ID:</label>
  <input type ="text" id="delete" name= "cusid" value="<%= id%>" readonly><br>
  </div>
  
  <div class="textbox1">
  <label for="firstusername"><br>First Name:</label>
  <input type ="text"  id="delete" name= "name" value="<%=firstname%>" readonly><br>
  </div>
  
  <div class="textbox2">
  <label for="firstusername"><br>Last Name:</label>
  <input type ="text" id="delete"  name= "lname" value="<%=lastname %>" readonly><br>
  </div>
  
  <div class="textbox3">
  <label for="firstusername"><br>NIC:</label>&nbsp&nbsp
  <input type ="text" id="delete"  name= "nic" value="<%=nic %>" readonly><br>
  </div>
  
  <div class="textbox4">
  <label for="firstusername"><br>Phone Number:</label>
  <input type ="text" id="delete"  name= "phone" value="<%=phone %>" readonly><br>
  </div>
  
  <div class="textbox5">
  <label for="firstusername"><br>Address:</label>
  <input type ="text" id="delete"  name= "address" value="<%=address%>" readonly><br>
  </div>
  
  <div class="textbox6">
  <label for="firstusername"><br>Date Of Birth:</label>
  <input type ="Date" id="delete"  name= "dob" value="<%=dob%>" readonly><br>
  </div>
  
  <div class="textbox7">
  <label for="firstusername"><br>Gender:</label>
  <input type ="text"  id="delete" name= "gender" value="<%=gender %>" readonly><br>
  </div>
  
  <div class="textbox8">
  <label for="firstusername"><br>User Name:</label>
  <input type ="text" id="delete"  name= "uname" value="<%=userName %>" readonly><br>
  </div>
  
  
  
  <div class ="textbutton">
   <br><input type ="submit" name="submit" value ="Delete Account" onclick="enableButton()"></input>
   </div><br>
   
  
  
  </form> 
 </div>

</div>
</div>



</body>
</html>