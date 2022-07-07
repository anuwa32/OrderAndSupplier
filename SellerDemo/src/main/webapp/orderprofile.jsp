<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order Details</title>

<link rel="stylesheet" type="text/css" href ="styles/orderprofile.css">
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
					<a href="#"></a> <a href="#"></a> <a href="#"></a> <a href="#">stock</a> <a href="order.jsp">order</a>
				</nav>
			</div>
		</header>
		<div class="banner-area">
		
		</div>
		<div class="content-area"> 
<br>
        <div class = "orderbox">
        <h1>Order Details</h1>
        <br>
        
        <table>
        
        
        <c:forEach var="os" items ="${orderDetail}">
        
        <c:set var ="oid" value ="${os.oid}"/>
        <c:set var ="date" value ="${os.date}"/>
        <c:set var ="bemail" value ="${os.bemail}"/>
        <c:set var ="vbrand" value ="${os.vbrand}"/>
        <c:set var ="category" value ="${os.category}"/>
        <c:set var ="model" value ="${os.model}"/>
        <c:set var ="myear" value ="${os.myear}"/>
        <c:set var ="scategory" value ="${os.scategory}"/>
        <c:set var ="qty" value ="${os.qty}"/>
        <c:set var ="name" value ="${os.name}"/>
        <c:set var ="item_no" value ="${os.item_no}"/>
        <c:set var ="status" value ="${os.status}"/>
        
        
        
        
        
        <tr>
             <td>Order Id</td>
             <td>${os.oid}</td>
        </tr>
        
        <tr>
             <td>Date</td>
             <td>${os.date}</td>
        </tr>
        
        <tr>
             <td>Supplier Email</td>
             <td>${os.bemail}</td>
        </tr>
        
        <tr>
             <td>Vehicle Brand</td>
             <td>${os.vbrand}</td>
        </tr>
        
        <tr>
             <td>Category</td>
             <td>${os.category}</td>
        </tr>
        
        <tr>
             <td>Vehicle Model</td>
             <td>${os.model}</td>
        </tr>
        
        <tr>
             <td>Manufacture Year</td>
             <td>${os.myear}</td>
        </tr>
        
        <tr>
             <td>Spare-part</td>
             <td>${os.scategory}</td>
        </tr>
        
        <tr>
             <td>Quantity</td>
             <td>${os.qty}</td>
        </tr>
        
         <tr>
             <td>Order Name</td>
             <td>${os.name}</td>
        </tr>
        
        <tr>
             <td>Item No</td>
             <td>${os.item_no}</td>
        </tr>
        
        <tr>
             <td>Status</td>
             <td>${os.status}</td>
        </tr>
       
        </c:forEach>
        </table>
        
        <c:url value="updateorder.jsp" var="odupdate">
        
        <c:param name= "oid" value="${oid}"/>
        <c:param name= "date" value="${date}"/>
        <c:param name= "bemail" value="${bemail}"/>
        <c:param name= "vbrand" value="${vbrand}"/>
        <c:param name= "category" value="${category}"/>
        <c:param name= "model" value="${model}"/>
        <c:param name= "myear" value="${myear}"/>
        <c:param name= "scategory" value="${scategory}"/>
        <c:param name= "qty" value="${qty}"/>
        <c:param name= "name" value="${name}"/>
        <c:param name= "item_no" value="${item_no}"/>
        <c:param name= "status" value="${status}"/>
        
        
        </c:url>
        
        <br>
        <br>
         
        <div class ="upd">
        <a href ="${odupdate}"> 
        <input type ="button" name="update" value ="Update Order">
        </a>
        </div>
        
        <br><br>
        
        <c:url value="deleteorder.jsp" var="oddelete">
        
        <c:param name= "oid" value="${oid}"/>
        <c:param name= "date" value="${date}"/>
        <c:param name= "bemail" value="${bemail}"/>
        <c:param name= "vbrand" value="${vbrand}"/>
        <c:param name= "category" value="${category}"/>
        <c:param name= "model" value="${model}"/>
        <c:param name= "myear" value="${myear}"/>
        <c:param name= "scategory" value="${scategory}"/>
        <c:param name= "qty" value="${qty}"/>
        <c:param name= "name" value="${name}"/>
        <c:param name= "item_no" value="${item_no}"/>
        <c:param name= "status" value="${status}"/>
        
        
        </c:url>
        <div class ="del">
        <a href ="${oddelete}"> 
        <input type ="button" name="update" value ="Cancel Order">
        </a>
        </div>
        
        
        
</div>
</div>
</div>
</body>
</html>