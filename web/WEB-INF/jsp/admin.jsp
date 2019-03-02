<%-- 
    Document   : admin
    Created on : 27 Oct, 2018, 4:07:51 PM
    Author     : Sampath
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextRoot" value="${pageContext.request.contextPath}"/>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"          "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
       
        <title>Admin|driver</title>
<!--        <style>
            
                .block {
    display: block;
    width: 100%;
    border: none;
    background-color: #4CAF50;
    padding: 14px 28px;
    font-size: 16px;
    cursor: pointer;
    text-align: center;
} 

.container-fluid {
  width: 100%;
  padding-right: 15px;
  padding-left: 15px;
  margin-right: auto;
  margin-left: auto;
}


.container {
  width: 100%;
  padding-right: 15px;
  padding-left: 15px;
  margin-right: auto;
  margin-left: auto;
}

.text-center {
  text-align: center !important;

  .row {
  display: -ms-flexbox;
  display: flex;
  -ms-flex-wrap: wrap;
  flex-wrap: wrap;
  margin-right: -15px;
  margin-left: -15px;
}   

.fixed-top {
  position: fixed;
  top: 0;
  right: 0;
  left: 0;
  z-index: 1030;
}

.btn {
  display: inline-block;
  font-weight: 400;
  text-align: center;
  background-color: whitesmoke;
  white-space: nowrap;
  vertical-align: middle;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
  border: 1px solid transparent;
  padding: 0.375rem 0.75rem;
  font-size: 1rem;
  line-height: 1.5;
  border-radius: 0.25rem;
  border: double;
  transition: color 0.15s ease-in-out, background-color 0.15s ease-in-out, border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
}

.ab{
    background-image: url("https://i.pinimg.com/originals/d0/d2/91/d0d2915fc3ae9c70a8329009db5e9f73.jpg");
    
}

#mcab{
    background-color: powderblue;
}

#mdriv{
    background-color: background;
}
        </style>
        
    </head>
    <body class="ab">
    
            <div  id="admin1">
                <ul>
                    <li id="mcab" >
                       <a  class="btn" href="${contextRoot}/cars"><h5>Manage cabs</h5></a>
                    </li> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
                   
                    <li id ="mdriv">
                        <a  class="btn" href="${contextRoot}/driver"><h5>Manage drivers</h5></a>
                    </li> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    
                    <li id ="contactt" >
                       <a class="btn" href="${contextRoot}/contact"><h5>Messages</h5></a>
                    </li> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                     
                    <li id ="booking" >
                       <a class="btn" href="${contextRoot}/booking"><h5>bookings</h5></a>
                    </li> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                </ul>
            </div>
        
</html> 
</body>
</html>-->   

<style>
.btn-group button {
    background-color: #4CAF50; /* Green background */
    border: 1px solid green; /* Green border */
    color: white; /* White text */
    padding: 10px 24px; /* Some padding */
    cursor: pointer; /* Pointer/hand icon */
    width: 100%; /* Set a width if needed */
    display: block; /* Make the buttons appear below each other */
}

.btn-group button:not(:last-child) {
    border-bottom: none; /* Prevent double borders */
}

/* Add a background color on hover */
.btn-group button:hover {
    background-color: #3e8e41;
}

#admin1{
    width: 100%
}

#abc{
    background-image:url("https://i.pinimg.com/originals/d0/d2/91/d0d2915fc3ae9c70a8329009db5e9f73.jpg");
}

h2{
    color: black;
}
</style>
    </head>
<body id="abc"> &nbsp;&nbsp;&nbsp;

    <h1>Management Pages</h1>&nbsp;&nbsp;&nbsp;

<div id="admin1" class="btn-group">
   <a  class="btn" href="${contextRoot}/cars"> <button id="mcab"><h2>Manage cabs</h2></button></a>&nbsp;&nbsp;
  <a  class="btn" href="${contextRoot}/driver">  <button id ="mdriv"><h2>Manage drivers</h2></button></a>&nbsp;&nbsp;
   <a  class="btn" href="${contextRoot}/contact"> <button id ="contactt"><h2> View Messages</h2></button></a>&nbsp;&nbsp;
<a  class="btn" href="${contextRoot}/booking">  <button id ="booking"><h2>View Bookings</h2></button></a>&nbsp;&nbsp;&nbsp;
 
</div>&nbsp;&nbsp;&nbsp;

<a  class="btn" href="${contextRoot}/index">  <button id ="incexb"><h2>Home</h2></button></a>


</body>
</html>
