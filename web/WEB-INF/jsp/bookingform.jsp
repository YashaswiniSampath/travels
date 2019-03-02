<%-- 
    Document   : bookingform
    Created on : 29 Oct, 2018, 3:58:29 PM
    Author     : Sampath
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextRoot" value="${pageContext.request.contextPath}"/>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>book vehicle</title>
        <style>
            #booking{
                background-image: url("https://brianlgilman.files.wordpress.com/2012/11/2009-audi-sportback-concept-front-lights-black-background-4-1920x14401.jpg");
                }
                .bocolor{
                    background-color: window;
                    width: 300px;
                    height: 50px;
                    border: 1px solid black;
                    box-sizing: border-box;
                     text-align: center; 
                    
                }
              .bd {
  display: inline-block;
  padding: 15px 25px;
  font-size: 24px;
  cursor: pointer;
  text-align: center;
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: lightblue;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
}

.bd:hover {background-color: #3e8e41}

.bd:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
                
                #bcolor{
                   color: white; 
                }
        </style>
    </head>
    <body id="booking">
        <h2 id="bcolor">VEHICLE BOOKING</h2>
    <div  >
            <div >
<!--                <div class="card text-left"></div>-->

                        <div class="book-a-car" >
                             <form action="${contextRoot}/addbooking" method="POST">

                                     <div id="bocolor"> <h4 id="bcolor">PICK-UP Location:</h4>
                                    <input name="from" class="bocolor" placeholder="Pick Up location" required/>    </div>

                                    <div id="bocolor">
                                        <h4 id="bcolor">DROP Location:</h4>
                                        <input name="to" class="bocolor" placeholder="Destination location" required/>
                                    </div>
                            
                               
                                <div id="bocolor" >
                                        <h4 id="bcolor">Vehicle Type:</h4>
                                        <input name="vehicle" class="bocolor" placeholder="your vehicle" required />
                                    </div>
                                 <div id="bocolor">
                                        <h4 id="bcolor">Your Mobile:</h4>
                                        <input name="mob" class="bocolor" type="text" pattern="[6-9]{1}[0-9]{9}" placeholder="your phone number" required />
                                    </div> &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                                    <div class="bd" >
                                    <button onclick="alert('Your Booking is sent\nwait for confirmation call!\nThank you!')" type="submit">Book Now</button>
                                </div>
                            </form>
                        </div>
                    </div>
    
    </body>
</html>
