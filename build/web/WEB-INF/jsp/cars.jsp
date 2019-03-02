<%-- 
    Document   : cars
    Created on : 27 Oct, 2018, 4:08:30 PM
    Author     : Sampath
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextRoot" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"          "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Car</title>
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
    background-color: #4CAF50; 
}
</style>
</head>
<body>

    <h2>Current cars running</h2>
<form method="post">

<table id="btable">
<tr>
<td id="xy">car no</td>
<td id="xy">brand</td>
<td id="xy">year of make</td>
<td id="xy">capacity</td>
<td id="xy">driver id</td>
</tr>
<%
try
{
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://127.0.0.1:3307/travel";
String username="root";
String password="yashu";
String query="select * from cars";
Connection conn=DriverManager.getConnection(url,username,password);
Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery(query);
while(rs.next())
{

%>
    <tr><td><%=rs.getString("carid") %></td>
    <td><%=rs.getString("brand") %></td>
    <td><%=rs.getString("year") %></td>
     <td><%=rs.getInt("capacity") %></td>
     <td><%=rs.getInt("driverid") %></td></tr>
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
</html> 
</body>
</html>