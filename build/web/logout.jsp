<%-- 
    Document   : logout
    Created on : Feb 7, 2017, 10:37:03 PM
    Author     : shivani
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
 
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logged out</title>
       
    </head>
    <body>
        <%
            session.removeAttribute("loginUser");
        %>
 
        <a href="index.jsp">Click to go Log In again!</a>
    </body>
</html>

