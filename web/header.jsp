<%-- 
    Document   : header
    Created on : Jul 7, 2016, 10:35:56 PM
    Author     : shivani
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <script>
            $(document).ready(function() {
                $('[data-toggle="tooltip"]').tooltip();
            });
        </script>
        <script src="//code.jquery.com/jquery-1.12.3.js"></script>
        <script src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.10.12/js/dataTables.bootstrap.min.js"></script>
        <link rel="stylesheet" type="text/css" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.12/css/dataTables.bootstrap.min.css" />
       
    </head>
    <body>
        <div style="background-color:black;
             color:white;
             text-align:right;
             padding:5px">
            <span class="glyphicon  glyphicon-time"></span>
            <%= (new java.util.Date()).toLocaleString()%>

            <c:if test="${empty sessionScope['loginUser']}">
                <c:redirect url="index.jsp" />
            </c:if>
            <br>
            <a data-toggle="tooltip" data-placement="bottom" title="GoodBye!" href="index.jsp" ><span class="glyphicon glyphicon-log-out"></span>Logout 
                <c:out value="${sessionScope['loginUser']}" />
            </a>
        </div>
    </body>
</html>    