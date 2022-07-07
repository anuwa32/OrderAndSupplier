<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Vehicle brand</title>

<link rel="stylesheet" type="text/css" href ="styles/styles19.css">
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

    
    
       <div class="newbrandbox">
     <h1>Enter the brand</h1>
      
      <br>
      <form action="OdNewBrandServlet" method="post">
      
      <div class="textbox">
      <label for="brand"><br>Vehicle Brand</label>
      <input type ="text" name= "brand" id="brand" placeholder="Enter the brand" value="" style = 'text-transform:uppercase' required><br>
      </div>
      
      
      <div class ="textbutton">
      <br><input type ="submit" name="submit" value ="Submit" onclick="enableButton()"></input>
      </div><br>
      
      <div class ="rsbn">
      <a href ="order.jsp">
      <input type ="button" name="submit" value ="Back">
      </a>
      </div>
      
      
      
      </form>
      
      
  </div>
      


 
</div>
</div>



</body>
</html>