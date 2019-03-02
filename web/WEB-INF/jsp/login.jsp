<%-- 
    Document   : login
    Created on : 27 Oct, 2018, 9:45:06 PM
    Author     : Sampath
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextRoot" value="${pageContext.request.contextPath}"/>
    <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
        pageEncoding="ISO-8859-1"%>
    <%--<%@page import="controller.admin_login"%>--%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link href='https://fonts.googleapis.com/css?family=Roboto:400' rel='stylesheet' type='text/css'>
      <link href="<c:url value="/assets/css/main.css" />" rel="stylesheet">
       <link href="<c:url value="/assets/css/bootstrap.min.css.css" />" rel="stylesheet">
       <style>
          #lb{ background-image :url("https://images.wallpaperscraft.com/image/field_dawn_sky_beautiful_scenery_87654_1920x1080.jpg");}
        

h2, input::-webkit-input-placeholder, button {
  font-family: 'roboto', sans-serif;
  transition: all 0.3s ease-in-out;
}

h3{
    text-align: center;
}

h2 {
  height: 50px;
  width: 100%;
  font-size: 18px;
/*  background: darken(green , 4%);*/
background-color: powderblue;
  color: black;
  line-height: 150%;
  border-radius: 3px 3px 0 0;
  box-shadow: 0 2px 5px 1px rgba(0,0,0,0.2);
  text-align: center;
}

form {
  box-sizing: border-box;
  background-color: white;
  width: 300px;
  margin: 100px auto 0;
  box-shadow: 2px 2px 5px 1px rgba(0,0,0,0.2);
  padding-bottom: 40px;
  border-radius: 3px;
  h2 {
    box-sizing: border-box;
    padding: 20px;
  }
}

input {
  margin: 40px 25px;
  width: 200px;
  display: block;
  border: none;
  padding: 10px 0;
  border-bottom: solid 1px black;
  transition: all 0.3s cubic-bezier(.64,.09,.08,1);
  background: linear-gradient(to bottom, rgba(255,255,255,0) 96%, black 4%);
  background-position: -200px 0;
  background-size: 200px 100%;
  background-repeat: no-repeat;
  color: darken(black , 20%);
  &:focus, &:valid {
    box-shadow: none;
    outline: none;
    background-position: 0 0;
  }
}

button {
  border: black;
  background: powderblue;
  cursor: pointer;
  border-radius: 3px;
  padding: 6px;
  width: 200px;
  color: black;
  
  margin-left: 25px;
  box-shadow: 0 3px 6px 0 rgba(0,0,0,0.2);

}
       </style>
    <title>Login Form</title>
    </head>
    <body id="lb">            
    <form action="${contextRoot}/authenticate" method="POST">
        <h2>ADMIN LOGIN PAGE</h2>
    				<h3>UserName</h3>
    				<input type="text" name="username" required="" />
    			
    				<h3>Password</h3> 
    				<input type="password" name="password" required=""/>
    			
             <button type="submit" onclick="alert('Welcome Admin')" value="Login">LOGIN</button></form>
    </body>
    </html>
