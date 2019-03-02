<%-- 
    Document   : driver
    Created on : 27 Oct, 2018, 4:08:59 PM
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
        <title>driver</title>
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

</style>
    </head>
    <body>
       <form method="post">

<table id="btable">
<tr>
<td id="xy">driverid</td>
<td id="xy">dname</td>
<td id="xy">mob</td>
<td id="xy">salary</td>
</tr>
<%
try
{
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://127.0.0.1:3307/travel";
String username="root";
String password="yashu";
String query="select * from driver";
Connection conn=DriverManager.getConnection(url,username,password);
Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery(query);
while(rs.next())
{

%>
    <tr><td><%=rs.getInt("driverid") %></td>
    <td><%=rs.getString("dname") %></td>
    <td><%=rs.getInt("mob") %></td>
     <td><%=rs.getInt("salary") %></td></tr>
        <%

}
%>
    </table>
    <%
    rs.close();
    stmt.close();
    conn.close();
    }
catch(Exception e)
{
    e.printStackTrace();
    }




%>

</form>

<div id="dec">
    <a  class="btn" method="POST" href="${contextRoot}/driverh"> <button ><h2>ADD DRIVER</h2></button></a> &nbsp;&nbsp;
  <a  class="btn" method="POST" href="${contextRoot}/deldriver"> <button ><h2>DELETE DRIVER</h2></button></a>  
</div>

 </body>
</html>
