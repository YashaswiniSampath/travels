<%-- 
    Document   : redirectTo
    Created on : Jun 11, 2018, 10:34:15 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String url = (String)request.getAttribute("URL");  
    response.sendRedirect(url);
%>