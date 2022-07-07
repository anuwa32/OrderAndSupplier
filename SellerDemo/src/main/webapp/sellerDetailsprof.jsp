<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sell details profile</title>

<link rel="stylesheet" type="text/css" href ="styles/styles15.css">
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
					<a href="#"></a> <a href="#"></a> <a href="#"></a> <a href="selldetails.jsp">sellDetails</a> <a href="home.jsp">home</a>
				</nav>
			</div>
		</header>
		<div class="banner-area">
		
		</div>
		<div class="content-area"> 

       
       <div class = "regbox">
       
       <h1>My Details</h1>
       
       <table>
       <c:forEach var ="ur" items ="${sd1Details}">
       
       
         <c:set var ="sid" value ="${ur.sid}"/>
         <c:set var ="brand" value ="${ur.brand}"/>
         <c:set var ="category" value ="${ur.category}"/>
         <c:set var ="model" value ="${ur.model}"/>
         <c:set var ="myear" value ="${ur.myear}"/>
         <c:set var ="infor" value ="${ur.infor}"/>
         <c:set var ="bemail" value ="${ur.bEmail}"/>
         
         <tr>
              <td>sell Id</td>
              <td>${ur.sid}</td>
         </tr>
         
         <tr>
              <td>Brand</td>
              <td>${ur.brand}</td>
         </tr>
         
         <tr>
              <td>Category</td>
              <td>${ur.category}</td>
         </tr>
         
         <tr>
              <td>Model</td>
              <td>${ur.model}</td>
         </tr>
       
        <tr>
              <td>Manufacture year</td>
              <td>${ur.myear}</td>
         </tr>
         
         <tr>
              <td>Any information</td>
              <td>${ur.infor}</td>
         </tr>
         
         <tr>
              <td>Email</td>
              <td>${ur.bEmail}</td>
         </tr>
       </c:forEach>
       </table>
       
       <c:url value="sellerdetailsupdate.jsp" var="usupdate">
       
        <c:param name ="sid" value="${sid}"/>
        <c:param name ="brand" value="${brand}"/>
        <c:param name ="category" value="${category}"/>
        <c:param name ="model" value="${model}"/>
        <c:param name ="myear" value="${myear}"/>
        <c:param name ="infor" value="${infor}"/>
        <c:param name ="bemail" value="${bemail}"/>
       
       </c:url>
       <br>
       
       <div class ="upd">
       <a href ="${usupdate}"> 
       <input type ="button" name="update" value ="Update Data">
       </a>
       </div>
       <br>
       
       <c:url value="selldetailsdelete.jsp" var="usdelete">
       
        <c:param name ="sid" value="${sid}"/>
        <c:param name ="brand" value="${brand}"/>
        <c:param name ="category" value="${category}"/>
        <c:param name ="model" value="${model}"/>
        <c:param name ="myear" value="${myear}"/>
        <c:param name ="infor" value="${infor}"/>
        <c:param name ="bemail" value="${bemail}"/>
       
       </c:url>
       <br>
       
       <div class ="del">
       <a href ="${usdelete}">
       <input type ="button" name="delete" value ="Delete Data">
       </a>
       </div>
       <br><br>
       
       
       
       
       
       
       
       
       
       
       
       
       
       </div>




</div>
</div>

</body>
</html>