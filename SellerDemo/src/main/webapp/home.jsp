<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>home</title>
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
	<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@500&display=swap" rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

	<link rel="stylesheet" type="text/css" href ="styles/home.css">

</head>
<body>
	<div class="box-area">
		<header>
			<div class="wrapper">



				<nav>
					<div class="content">
						<img class="img" src="images/logo.png" alt="logo image">
					</div>
				<a href="#">home</a>
				<a href="#">about</a>
				<a href="#">portfolio</a>
				<a href="#">services</a>
				<a href="#">contact</a>

				</nav>
			</div>
		</header>
		<div class="banner-area">
			<div class="w3-content w3-section"  style="margin-right: 0px;margin-left: 0px;  ">


			  <img class="mySlides w3-animate-fading" src="images/img1.jpg" >
			  <img class="mySlides w3-animate-fading" src="images/img2.jpg">
			  <img class="mySlides w3-animate-fading" src="images/img3.jpg" >
				<img class="mySlides w3-animate-fading" src="images/img4.jpg" >
				<img class="mySlides w3-animate-fading" src="images/img5.jpg" >
				<img class="mySlides w3-animate-fading" src="images/img6.jpg" >
				<img class="mySlides w3-animate-fading" src="images/img7.jpg" >
				<img class="mySlides w3-animate-fading" src="images/img8.jpg" >

			</div>
		</div>

		<div class="content-area">
			<div class="wrapper">

		<br><br><br>		<br><br><br>		<br><br><br>		<br><br><br>		<br><br><br>		<br><br><br>		<br><br><br>		<br><br><br>		<br><br><br>		<br><br><br>

<div class="flex">

	<div class="para1">
		<h2>WHO ARE WE ?</h2>
		<p>Auto mart Service Station was established in 2011 in Kandy. At that point there was a huge need of a service station for the vehicles around Kandy. When in 2011.  with the profit within these years the company has decided to establish a new branch in Colombo as well. And this company is moving fast and capable of establishing few more branches around the country as well.</p>
	</div>
	<div class="para2">
			<h2>OUR MISSION...</h2>
		<p> Our Mission is to provide honest automotive repair, quality workmanship and exceptional service. This will allow long-term growth and profitability while providing future opportunities for our employees. This Mission is only possible by attaining the following goals that we established for our business, our employees and our customers.</p>
	</div>
	<div class="para3">
		<h2>WHY US ?</h2>
		<ul class="ul">
			<li class="li">Dedication to Customer Satisfaction</li>
			<li class="li">24 Hour Service</li>
			<li class="li">Multiple Locations</li>
			<li class="li">Preferred by Insurance Companies</li>
			<li class="li">Special Offers</li>
			<li class="li">Certified Technicians</li>
			<li class="li">Warranties</li>
			<li class="li">Same Day Repairs</li>
		</ul>
	</div>
</div>



<script>
var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}
  x[myIndex-1].style.display = "block";
  setTimeout(carousel, 9000);
}
</script>














			</div>
			<footer class="footer">
				 <div class="container">
					<div class="row">
						<div class="footer-col">
							<h4>company</h4>
							<ul>
								<li><a href="#">about us</a></li>
								<li><a href="#">our services</a></li>
								<li><a href="#">privacy policy</a></li>
								<li><a href="#">affiliate program</a></li>
							</ul>
						</div>
						<div class="footer-col">
							<h4>Contact Us</h4>
							<ul>
								<li><a href="#">0112345672</a></li>
								<li><a href="#">0811234567</a></li>
								<li><a href="#">automart@gmail.com</a></li>

							</ul>
						</div>
						<div class="footer-col">
							<h4>online shop</h4>
							<ul>
								<li><a href="#">Inventory</a></li>

							</ul>
						</div>
						<div class="footer-col">
							<h4>follow us</h4>
							<div class="social-links">
								<a href="#"><i class="fab fa-facebook-f"></i></a>
								<a href="#"><i class="fab fa-twitter"></i></a>
								<a href="#"><i class="fab fa-instagram"></i></a>
								<a href="#"><i class="fab fa-linkedin-in"></i></a>
							</div>
						</div>
					</div>
				 </div>
			</footer>

		</div>
	</div>

</body>
</html>
tml>