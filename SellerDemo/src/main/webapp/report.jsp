<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Daily order details</title>

    <meta charset="UTF-8">

	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
  	
  	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	
	<link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@500&display=swap" rel="stylesheet">

	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

	<link rel="stylesheet" type="text/css" href ="styles/report.css">


</head>
<body>

 
		<div class="background">
		<img class="img" src="images/" alt="logo image">
	
	</div>
	
<br><br><br><br><br><br><br>



		         <form action="ReportServlet" method="post">
	
			     <div class="searchbar">
			   
				 <input type="Date" name="search" class="search" placeholder="search the year" required>
				 <input type="text" name="search1" class="search1" placeholder="search the brand" required>
			     
			       
                 <input type ="submit" id ="sub"  name="submit" value ="search" onclick="enableButton()"></input>
                 
                 
              
                      </div>
		     
			    </form>
			    
			    <br><br><br><br><br>
			    
			    
			    
			    
			    <div class = searchre >
			    <br>
			    <h2>Daily order details</h2>
			    
			    <table>
			    <tr>
			    <td>Date</td>
			    <td>Email</td>
			    <td>Brand</td>
			    <td>Category</td>
			    <td>Model</td>
			    <td>Manufacture year</td>
			    <td>Spare-part</td>
			    <td>Quantity</td>
			    <td>Item No</td>
			    <td>Status</td>
			    
			    
			    </tr>
			    
			    <c:forEach var="rep" items = "${repDetails}">
			    
			     <c:set var ="date" value ="${rep.date}"/>
			     <c:set var ="bemail" value ="${rep.bemail}"/>
			     <c:set var ="vbrand" value ="${rep.vbrand}"/>
			     <c:set var ="category" value ="${rep.category}"/>
			     <c:set var ="model" value ="${rep.model}"/> 
			     <c:set var ="myear" value ="${rep.myear}"/>
			     <c:set var ="scategory" value ="${rep.scategory}"/>
			     <c:set var ="qty" value ="${rep.qty}"/>
			     <c:set var ="item_no" value ="${rep.item_no}"/>
			     <c:set var ="status" value ="${rep.status}"/>
			     
			     
			     <tr>
			     
			      <td>${rep.date}</td>
			      <td>${rep.bemail}</td>
			      <td>${rep.vbrand}</td>
			      <td>${rep.category}</td>
			      <td>${rep.model}</td>
			      <td>${rep.myear}</td>
			      <td>${rep.scategory}</td>
			      <td>${rep.qty}</td>
			      <td>${rep.item_no}</td>
			      <td>${rep.status}</td>
			      
			     
			     
			    
			     </tr>
			    
			    </c:forEach>
			    </table>
			    
			    
			    
			    </div>
        
               <br><br>
               <div class = "print">
               <a  onclick ="window.print()">
               <input type ="button" name ="print" value="Print">
               </a>
               </div>

             

        
           


      
	




</body>
</html>