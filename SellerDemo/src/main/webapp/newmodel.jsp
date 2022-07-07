<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Enter the vehicle model</title>

<link rel="stylesheet" type="text/css" href ="styles/styles20.css">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">

</head>
<body>


<div class="box-area">
		<header>
			<div class="wrapper">
				<div class="logo">
					<a href="#">Auto Mart</a>
				</div>
				<nav>
					<a href="#">home</a> <a href="#">about</a> <a href="#">portfolio</a> <a href="#">services</a> <a href="#">contact</a>
				</nav>
			</div>
		</header>
		<div class="banner-area">
		
		</div>
		<div class="content-area">

    
    
       <div class="newmodelbox">
     <h1>Enter the Model</h1>
      
      <br>
      <form action="NewModelServlet" method="post">
      <div class="textbox">
      <label for="model"><br>Vehicle Model</label>
      <input type ="text" name= "model" id="model" placeholder="Enter the model" value="" style = 'text-transform:uppercase' required><br>
      </div>
      
      
      <div class ="textbutton">
      <br><input type ="submit" name="submit" value ="Submit" onclick="enableButton()"></input>
      </div><br>
      
      <div class ="rsbn">
      <a href ="selldetails.jsp">
      <input type ="button" name="submit" value ="Back">
      </a>
      </div>
      
      
      
      </form>
      
      
  </div>
      


 
</div>
</div>





</body>
</html>