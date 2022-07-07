<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Previous month report</title>


<meta charset="UTF-8">

	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
  	
  	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	
	<link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@500&display=swap" rel="stylesheet">

	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

	<link rel="stylesheet" type="text/css" href ="styles/monthreport.css">


</head>
<body>

        <div class="background">
		<img class="img" src="images/auto.png" alt="logo image">
	
	</div>
	
<br><br><br><br><br><br><br>

  <label for="#"><strong>Previous month Report for orders</strong></label><br><br>
      <div class="form">
           <form action="PreviousMonthReport" method="post">
           
			
        
       




	  <input type="submit" id="submit" name="Submit" value="Submit" onclick="enableButton()"></input><br><br>
	    	  
	</form>  	
  </div> 










</body>
</html>