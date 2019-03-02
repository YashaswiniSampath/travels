<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextRoot" value="${pageContext.request.contextPath}"/>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Travel Agency</title>
<!--        <link href="<c:url value="/assets/css/bootstrap.css" />" rel="stylesheet">-->
<!--        <link href="<c:url value="/assets/css/yashu.css" />" rel="stylesheet">-->
        <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 

    <a class="follow" href="https://facebook.com/sri.cabs" target="_blank"><i class="fa fa-facebook"></i>Follow me on Facebook</a> &nbsp;&nbsp;
    <a class="follow" href="https://instagram.com/" target="_blank"><i class="fa fa-instagram"></i>Follow me on Insta</a>&nbsp;&nbsp;
 <a class="follow" href="" target="_blank"><i class="fa fa-phone"></i>contact@+91 9448084362</a>
 
 <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
       
       <style>
           html,body
{
    width: 100%;
    height: 100%;
    margin: 0px;
    padding: 0px;
    overflow-x: hidden; 
    background-color: #e9ecef; 
}

#ContainerLoginForm{
    margin-top: 250px;
    padding: 60px;
    padding-top: 20px;
    padding-bottom: 20px;
}

#ContainerSelectForm{
    margin-top: 250px;
    padding: 60px;
    padding-top: 20px;
    padding-bottom: 20px;
 
    
}



#myContainer{
    margin :25px;
    
}
.wrapper{
    position: relative;
}
i.fa-search{
    position: absolute;
    top: 5px;
    right: auto;
}
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: black;
}

li {
    float: left;
    border-right:1px solid #bbb;
}

li:last-child {
    border-right: none;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover:not(.active) {
    background-color: darkblue;
}

.active {
    background-color: white;
}

.header {
    padding: 75px;
    text-align: center;
    background: lightblue;
    color: white;
}
.container {
    position: relative;
}

.text-block {
    position: absolute;
    bottom: 20px;
    right: 20px;
    background-color: black;
    color: white;
    padding-left: 20px;
    padding-right: 20px;
} 

.container-fluid {
  width: 100%;
  padding-right: 15px;
  padding-left: 15px;
  margin-right: auto;
  margin-left: auto;
}



 
.text-center {
  text-align: center !important;}
.service-item-content,
	.service-item-thumb {
		float: none;
		width: 100%;
	}
	.service-item-content {
		padding: 30px 0;}
        
        .top-left {
    position: absolute;
    top: 15px;
    left: 16px;
}

.container {
    position: relative;
    text-align: center;
/*    color: black;*/
}

.column {
    float: left;
    width: 33.33%;
    border: black;
}

/* Clear floats after the columns */
.row:after {
    content: "";
    display: table;
    clear: both;
} 

h3,h2{
    color: darkblue;
}
        

</style>
</head>
<body>
  <div class="container-fluid" style="background">
       <img src='https://www.unitedrentalsystem.co.uk/media/1220/tablet10.jpg?anchor=center&mode=crop&width=1024&height=300&rnd=131229837280000000' width="100%" height="10%"/>
       <div class="top-left"><h1>SRI CABS</h1></div>
      
  <div class="text-block"> 
    <h4>SriCabs</h4>
    <p>We care for you.</p>
  </div>
</div>   

<nav>
 <ul>
  <li><a href="#home">Home</a></li>
  <li><a href="#services">Services</a></li>
  <li><a href="${contextRoot}/contactform">Contact</a></li>
  <li style="float:right"> 
    <form class="text-center" action="${contextRoot}/login"  method="POST">               
 <button class="btn btn-success text-center"
       id="sysAdminBtn"  type="submit"  style="width: 240px; margin-left:
        20%;background-color: rgb(37,115,198);  font-variant-caps:
all-petite-caps; "><h4> Admin</h4>

                        </button>
                    </form> 
</li>
  <li><a href="${contextRoot}/bookingform">Booking</a></li>  
</ul> 
</nav>


<div class="container" align="center">
    <section>
        <h1 style="font-size:200%;">SRI CABS</h1>
<p style="font-size:120%;" style="font:sans-serif">SriCabs Tours & Travels, who has a wide range of experience in Tours and Travel service provider.  We are growing exponentially with respect to fleet size and geographical presence. Tejas Travels offers all types of travel related services under one roof that are known for our excellent and efficient travel services.
We have an online booking facility for Car Rentals, Bus Rental, Minibus (Mini Coach) rentals, Tempo Traveller and SUV's. </p> 
    </section>
</div>
&nbsp;
&nbsp;
&nbsp;
&nbsp;

  
<!--<div class="wrapper">
  <ul>
      <li ><a href="" class="facebook" target="Blank"><i class="fa fa-facebook fa-2x" aria-hidden="true"></i></a></li>
      <li><a class="twitter" target="blank"><i class="fa fa-twitter fa-2x" aria-hidden="true"></i></a></li>
      <li><a href="" class="instagram" target="Blank"><i class="fa fa-instagram fa-2x" aria-hidden="true"></i></a></li>
      <li> <a class="google" target="blank"><i class="fa fa-google fa-2x" aria-hidden="true"></i></a></li>
      <li> <a class="whatsapp" target="blank"><i class="fa fa-whatsapp fa-2x" aria-hidden="true"></i></a></li>
  </ul>
</div>
  -->
  
<section id="services" class="section-padding">
        <div class="container">
            <div class="row">
                <!-- Section Title Start -->
                <div class="col-lg-12">
                    <div class="section-title  text-center">
                        <h2>Our Services</h2>
                        <span class="title-line"></span>
                        <p>Types of Services available</p>
                    </div>
                </div>
                <!-- Section Title End -->
            </div>

           
			<!-- Service Content Start -->
			<div class="row">
				<!-- Single Service Start -->
				<div>
					<div class="column">
						<i class="fa fa-taxi"></i>
						<h3>Etios/ Swift/Dezire</h3>
                                                <p>The platinum series,sedan</p>
                                                <p> Category:Budget Cabs</p> 
                                                <p> Air Condition: Yes </p>
                                                <p> Seating: Capacity 4 + 1</p> 
                                                <p> Services : Local Travel, Outstation Travel, Airport Pickup/Drop</p> 
					</div>
				</div>
				<!-- Single Service End -->
				
				<!-- Single Service Start -->
				<div>
					<div class="column">
						<i class="fa fa-taxi"></i>
						<h3>Indica</h3>
                                                <p> Category:Budget Cabs</p> 
                                                <p> Air Condition: Yes </p>
                                                <p> Seating: Capacity 4 + 1</p> 
                                                <p> Services : Local Travel, Outstation Travel</p>
                                                <p> , Airport Pickup/Drop</p>
					</div>
				</div>
				<!-- Single Service End -->
				
				<!-- Single Service Start -->
                                <div>
					<div class="column">
						<i class="fa fa-car"></i>
						<h3>Innova</h3>
                                                <p> Category:Budget,Luxury Cabs</p> 
                                                <p> Air Condition: Yes </p>
                                                <p> Seating: Capacity  6 + 1, 7 + 1</p> 
                                                <p> Services : Local Travel, Outstation Travel, Airport Pickup/Drop</p> 
                                                <p>Includes Innova and Innova Crysta</p>
					
					</div>
				</div>
				<!-- Single Service End -->
				
				<!-- Single Service Start -->
				<div>
                                    <div class="column">
						<i class="fa fa-umbrella"></i>
						<h3>Out Station</h3>
						<p>For outstaion trips.</p>
                                                <p>Booking cabs for customized trips</p>
                                                <p>Driver bata will be charged</p>
                                                <p>Trips in and around Bangalore</p>
                                                <p>Also to Kerala,TN,Andra</p>
					</div>
				</div>
				<!-- Single Service End -->
				
				<!-- Single Service Start -->
                                <div> &nbsp;
					<div class="column">
						<i class="fa fa-plane"></i>
						<h3>Airport</h3>
						<p>Airport pick up and drop facility.</p>
                                                <p>Information to be given Prior</p>
                                                <p>Assurance of drop on time</p>
                                                <p>Large space for luggages</p>
					</div>
				</div>
				<!-- Single Service End -->
				
				<!-- Single Service Start -->
				<div> 
					<div class="column">
						<i class="fa fa-industry"></i>
						<h3 >Contract</h3>
						<p>monthly contract for companies.</p>
                                                <p>Regular vehicles for a company</p>
                                                <p>Fixed contract</p>
                                                <p>Please contact for details</p>
					</div>
				</div>
				<!-- Single Service End -->
			</div>
			<!-- Service Content End -->
        </div>
    </section>
    <!--== Services Area End ==-->


        
<div  class="footer" style="background-color:black;color:white;padding:20px;">
 <h2 id="contact">Contact Us</h2>
<p>phone : 9448084365</p>
<a href="">sricabs@yahoo.com</a>
</div>
</body>
</html>
   


