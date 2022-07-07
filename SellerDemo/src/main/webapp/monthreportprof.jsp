<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Monthly Report</title>


<meta charset="UTF-8">

	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
  	
  	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	
	<link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@500&display=swap" rel="stylesheet">

	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

	<link rel="stylesheet" type="text/css" href ="styles/currentmonthcss.css">



</head>
<body>

         <div class="background">
		 <img class="img" src="images/" alt="logo image">
	
	     </div>
	     
	     
<br><br> 

               
            
	     
	     <div class = searchre >
			    <br><br><br>
			    <h2>Current month order details</h2>
			    <br><br>
			    <table id ="currentmonth" cellspacing="0" cellpadding="0">
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
			    
			    <c:forEach var="repo" items = "${repoDetails}">
			    
			     <c:set var ="date" value ="${repo.date}"/>
			     <c:set var ="bemail" value ="${repo.bemail}"/>
			     <c:set var ="vbrand" value ="${repo.vbrand}"/>
			     <c:set var ="category" value ="${repo.category}"/>
			     <c:set var ="model" value ="${repo.model}"/> 
			     <c:set var ="myear" value ="${repo.myear}"/>
			     <c:set var ="scategory" value ="${repo.scategory}"/>
			     <c:set var ="qty" value ="${repo.qty}"/>
			     <c:set var ="item_no" value ="${repo.item_no}"/>
			     <c:set var ="status" value ="${repo.status}"/>
			     
			     
			     <tr>
			     
			      <td>${repo.date}</td>
			      <td>${repo.bemail}</td>
			      <td>${repo.vbrand}</td>
			      <td>${repo.category}</td>
			      <td>${repo.model}</td>
			      <td>${repo.myear}</td>
			      <td>${repo.scategory}</td>
			      <td>${repo.qty}</td>
			      <td>${repo.item_no}</td>
			      <td>${repo.status}</td>
			      
			     
			     
			    
			     </tr>
			    
			    </c:forEach>
			    </table>
			    
			    
			   </div>
			   
			   <div class = "print">
               
               <input type ="button" id="btnClick" name ="print" value="Print">
              
               
               
               <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
              <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.22/pdfmake.min.js"></script>
              <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.min.js"></script>
              <script type="text/javascript">
              
              
               $("body").on("click", "#btnClick", function () {
                      html2canvas($('#currentmonth')[0], {
                      onrendered: function (canvas) {
                        var data = canvas.toDataURL();
                        var docDefinition = {
                        content: [{
                            image: data,
                            width: 500
                            
                        }]
                    };
                    pdfMake.createPdf(docDefinition).download("current month order details.pdf");
                }
            });
        });
    </script>
               
               </div>
			   
               <br><br>
               


</body>
</html>