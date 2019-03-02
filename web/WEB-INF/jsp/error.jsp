<%-- 
    Document   : error
    Created on : Jun 12, 2018, 9:07:12 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextRoot" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error</title>
<!--        <link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet">
        <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">-->
    </head>
    <body>
       
        <div>
<!--            <img src="https://wallpapercave.com/wp/kFWtfAJ.jpg"  />         -->
           

      

        <div class ="row align-items-center">
            <div class="col-md-5 offset-md-3">
                <div  style="margin-top: 20%">
                    <h3 align="center">Oops, there was an error!</h3>
                    <hr>
                    <h4><p align="center">
                            ${errorMessage}
                        </p></h4>
                    <hr>
                    <a href="/login">Return</a>

                </div>
            </div>
        </div>
        </div>


    </body>
</html>
