<%-- 
    Document   : deldriver
    Created on : 29 Oct, 2018, 11:34:45 PM
    Author     : Sampath
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextRoot" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<%
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://127.0.0.1:3307/travel";
String userid = "root";
String password = "yashu";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
    <head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
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
<h1>Delete Driver</h1>
<table id="btable">
<tr>
    <td id="xy">Driverid</td>
    <td id="xy">Driver name</td>
<td id="xy">mob no</td>
<td id="xy">Salary</td>
<td id="xy">Action</td>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl, userid, password);
statement=connection.createStatement();
String sql ="select * from driver";
resultSet = statement.executeQuery(sql);
int i=0;
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("driverid") %></td>
<td><%=resultSet.getString("dname") %></td>
<td><%=resultSet.getString("mob") %></td>
<td><%=resultSet.getString("salary") %></td>
<td><a href="${contextRoot}/delete?driverid=<%=resultSet.getString("driverid") %>"><button type="button" class="btn" class="delete">Delete</button></a></td>
</tr>
<%
i++;
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html> 