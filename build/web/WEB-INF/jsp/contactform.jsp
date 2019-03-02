<%-- 
    Document   : contactform
    Created on : 29 Oct, 2018, 4:47:02 PM
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
        <title>JSP Page</title>
        <style>
            #con-body{
                background-image: url("http://www.highreshdwallpapers.com/wp-content/uploads/2012/08/Luxury-Car-Wallpaper.jpg");
            }
            
            .cd{
                color: white;
            }
            .cocolor{
                    background-color: window;
                    width: 300px;
                    height: 50px;
                    border: 1px solid black;
                    box-sizing: border-box;
                     text-align: center; 
                    
                }
                
                .button1 {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 16px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
    cursor: pointer;
}

.button1 {
    background-color: white; 
    color: black; 
    border: 2px solid #4CAF50;
}

.button1:hover {
    background-color: #4CAF50;
    color: white;
}
        </style>
    </head>
    <body id="con-body"  >
     <div id="contactt">
    <h2 class="cd" >Contact Us</h2>
     <div class="row">
         <div  >
                <div class="card text-left"></div>
                 <section id="slider-area">
       
                                <form action="${contextRoot}/addcontact" method="POST">
                                <div >
                                    <h4 class="cd">Enter your Name:</h4>
                                    <input class="cocolor" name="name" placeholder="Your Name" required />

                                    <div >
                                        <h4 class="cd">Enter your phone no:</h4>
                                        <input class="cocolor"  name="no" type="text" pattern="[6-9]{1}[0-9]{9}" placeholder="Enter phone number" />
                                    </div>
                                    
                                    <div>
                                        <h4 class="cd">Please leave your message:</h4>
                                        <input class="cocolor" name="message" type="text" placeholder="Your Message.." required/>
                                    </div> &nbsp;&nbsp;
                                </div>
                                <div class="button1">
                                    <button id="contactmessage" onclick="alert('Thank you for contacting us!\n will reach out to you soon..')" type="submit">submit</button>
                                </div>
                            </form>
                        </div>
                    </div>
    
    
</div>

    </body>
</html>
