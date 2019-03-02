<%-- 
    Document   : process
    Created on : 29 Oct, 2018, 11:16:40 PM
    Author     : Sampath
--%>


 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextRoot" value="${pageContext.request.contextPath}"/>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            #dd{
                background-image: url("http://www.add.co.il/wp-content/uploads/2015/05/bg-slideshow31.jpg")
            }
            
        </style>
    </head>
    <body id="dd">
        <h1> record is inserted </h1>
      

<%
String driverid=request.getParameter("driverid");
String dname=request.getParameter("dname");
String mob=request.getParameter("mob");
String salary=request.getParameter("salary");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3307/travel", "root", "yashu");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into driver(driverid,dname,mob,salary)values('"+driverid+"','"+dname+"','"+mob+"','"+salary+"')");
out.println("Data is successfully inserted!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%> 
<div >
  <a  class="btn" method="POST" href="${contextRoot}/index"> <button ><h2>Home</h2></button></a> 
         <a  class="btn" method="POST" href="${contextRoot}/admin"> <button ><h2>AdminPage</h2></button></a> 
</div>  
    </body>
</html>
    