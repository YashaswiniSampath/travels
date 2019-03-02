<%-- 
    Document   : delete
    Created on : 29 Oct, 2018, 11:39:20 PM
    Author     : Sampath
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextRoot" value="${pageContext.request.contextPath}"/>

<%
String driverid=request.getParameter("driverid");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3307/travel", "root", "yashu");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM driver WHERE driverid="+driverid);
out.println("Data Deleted Successfully!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%> 
<html>
    <head>
        <title>Driver details are removed</title>
        <style>
            #dd{
                background-image: url("http://www.add.co.il/wp-content/uploads/2015/05/bg-slideshow31.jpg")
            }
        </style></head>
    
    <body id="dd">
        <a  class="btn" method="POST" href="${contextRoot}/index"> <button ><h2>Home</h2></button></a> 
         <a  class="btn" method="POST" href="${contextRoot}/admin"> <button ><h2>AdminPage</h2></button></a> 
    </body>
</html>
