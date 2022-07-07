<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Seller Info</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href ="styles/styles11.css">




</head>
<body>


	<div class="box-area">
		<header>
			<div class="wrapper">
				<div class="logo">
				<img class="img" src="images/logo.png" alt="logo image">
				</div>
				<nav>
				<a href="#"></a>
				<a href="#"></a>
				<a href="home.jsp">home</a>
				<a href="register.jsp">Register</a>
				<a href="login.jsp">login</a>

				</nav>
			</div>
		</header>
		<div class="banner-area">

		</div>

		<div class="content-area">
			<div class="wrapper">
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
    <!--open contact area-->


     <div class="loginbox">
   <h1>Varification</h1>
      <form action="LoginSellerInfoServlet" method="post"> 

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
  <br><input type ="submit" name="submit" value ="Submit" onclick="enableButton()"></input>
  </div><br>

 

<br>
   
   
   
</form>
</div>




    <div class ="insbn1">
    <a href ="register.jsp">
    <input type ="button" name="submit" value ="Enter">
    </a>
    </div>

    <div class="nf">
    <h2></h2>
    </div>


    <div class="inf">
    <h1>*Before entering the data you must be registered to the system</h1>
    
    </div>

    

    <div class ="insbn">
    <a href ="sell.jsp">
    <input type ="button" name="submit" value ="Back">
    </a>
    </div>

    <!--Close content Area-->




</div>
</div>

</div>

</body>
</html>