<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Results</title>
<link rel="stylesheet" type="text/css" href ="styles/searchprofile.css">
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
					<a href="#"></a> <a href="#"></a> <a href="home.jsp">home</a> <a href="#">stock</a> <a href="order.jsp">order</a>
				</nav>
			</div>
		</header>
		<div class="banner-area">
		
		</div>
		<div class="content-area">  
		
		
<div class="searchre">
<br>
<h1>Results</h1>
<br>
<table>
       <tr>
       <td>Brand</td>
       <td>Category</td>
       <td>Model</td>
       <td>Manufacture year</td>
       <td>Any information</td>
       <td>Email</td>
       </tr>
       <c:forEach var="srh" items = "${sehDetails}">
       
         
         <c:set var ="brand" value ="${srh.brand}"/>
         <c:set var ="category" value ="${srh.category}"/>
         <c:set var ="model" value ="${srh.model}"/>
         <c:set var ="myear" value ="${srh.myear}"/>
         <c:set var ="infor" value ="${srh.infor}"/>
         <c:set var ="bemail" value ="${srh.bEmail}"/>
       
       
       
       
         <tr>
              <td>${srh.brand}</td>
                 
              <td> ${srh.category}</td>
             
        
              <td>${srh.model}</td>
        
              
              <td>${srh.myear}</td>
        
              <td>${srh.infor}</td>
         
              <td>${srh.bEmail}</td>
         </tr>
       
       
       
       
       </c:forEach>

</table>


</div>
</div>
</div>

</body>
</html>