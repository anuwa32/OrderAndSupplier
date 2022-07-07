<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Order</title>
<link rel="stylesheet" type="text/css" href ="styles/deleteorder.css">
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
					<a href="#"></a> <a href="#"></a> <a href="#"></a> <a href="#">stock</a> <a href="#">order</a>
				</nav>
			</div>
		</header>
		<div class="banner-area">
		
		</div>
		<div class="content-area"> 
<br>

    <%
        String oid = request.getParameter("oid");
        String date = request.getParameter("date");
        String bemail = request.getParameter("bemail");
        String vbrand = request.getParameter("vbrand");
        String category = request.getParameter("category");
        String model = request.getParameter("model");
        String myear = request.getParameter("myear");
        String scategory = request.getParameter("scategory");
        String qty = request.getParameter("qty");
        String name = request.getParameter("name");
        String item_no = request.getParameter("item_no");
        String status = request.getParameter("status");
        
    %>

   <div class="orderbox">
   
   <h1>Cancel Order</h1>
   <form  action="DeleteOrderServlet" method="post">
  
    <div class="textbox">
    <label for="odid"><br>Order Id :</label>
    <input type ="text" class="odid" id="delete" name="odid" value="<%=oid %>" readonly><br><br>
    </div>
   
    <div class="textbox1">
    <label for="date"><br>Date :</label>
    <input type ="date" class="date" id="delete" name= "did"  value="<%=date %>"readonly><br><br>
    </div>
    
    <div class="textbox2">
    <label for="email"><br>Email :</label>
    <input type ="text" class="email" name= "email" id="delete" value="<%=bemail %>"readonly><br><br>
    </div>
   
    <div class="textbox3">
    <label for="brand"><br>Vehicle Brand :</label>
    <input type ="text" class="brand" id="delete" name="brand" value="<%=vbrand %>"readonly><br><br>
    </div>
    
    <div class="textbox4">
    <label for="cate"><br>Category :</label>
    <input type ="text" class="cate" id="delete" name="cate" value="<%=category %>"readonly><br><br>
    </div>
   
    <div class="textbox5">
    <label for="model"><br>Model :</label>
    <input type ="text" class="model" id="delete" name="model" value="<%=model%>"readonly><br><br>
    </div>
   
    <div class="textbox6">
    <label for="year"><br>Manufacture year :</label>
    <input type ="text" class="year" id="delete" name="year" value="<%=myear %>"readonly><br><br>
    </div>
   
    <div class="textbox7">
    <label for="spart"><br>Spare part :</label>
    <input type ="text" class="spart" id="delete" name="spart" value="<%=scategory %>"readonly><br><br>
    </div>
   
    <div class="textbox8">
    <label for="qtyt"><br>Quantity :</label>
    <input type ="text" class="qtyt" id="delete" name="qtyt" value="<%=qty %>"readonly><br><br>
    </div>
   
    <div class="textbox9">
    <label for="name"><br>Order Name :</label>
    <input type ="text" class="name" id="delete" name="fname" value="<%=name %>"readonly><br><br>
    </div>
   
    <div class="textbox10">
    <label for="ino"><br>Item No :</label>
    <input type ="text" class="ino" id="delete" name="ino" value="<%=item_no %>"readonly><br><br>
    </div>
    
    <div class ="textbutton">
    <br><input type ="submit" name="submit" value ="Cancel order" onclick="enableButton()"></input>
    </div><br>
   
    </form>
   </div> 
 
 </div>
 </div>

</body>
</html>