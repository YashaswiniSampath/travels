<%-- 
    Document   : driverh
    Created on : 29 Oct, 2018, 11:24:52 PM
    Author     : Sampath
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextRoot" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
   
    <body>
      <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Adddrivers</title>
         <style>
    #btable {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 100%;
}
#btable td, #btable th {
    border: 1px solid black;
    padding: 8px;
    color: black;
}

#btable tr:nth-child(even){background-color: #f2f2f2;}

#btable tr:hover {background-color: #ddd;}

#btable th {
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: left;
    background-color: #4CAF50;
    color: white;
}

#xy{
    background-color: yellow;
}

#dec{
    background-color: powderblue; 
}

.btn{
    align: center;
}
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
 #dd{
                background-image: url("http://www.add.co.il/wp-content/uploads/2015/05/bg-slideshow31.jpg")
            }

</style>
    </head>
    <body id="dd">
<form action="${contextRoot}/process" method="POST">
DriverID:<br>
<input type="text" name="driverid">
<br>
 name:<br>
<input type="text" name="dname">
<br>
Mobile:<br>
<input type="text" name="mob">
<br>
salary:<br>
<input type="text" name="salary">
<br><br>
<button  type="submit" value="submit">add</button>
</form>
</body>
</html> 

    </body>
</html>
