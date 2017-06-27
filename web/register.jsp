
<%-- 
    Document   : register
    Created on : Jul 5, 2016, 4:47:30 PM
    Author     : shivani
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

        <title>Registration</title>

    </head>
    
    <body class="body">
        <div style="background-color:black;
             color:white;
             text-align:right;
             padding:5px">
            <span class="glyphicon  glyphicon-time"></span>
            <%= (new java.util.Date()).toLocaleString()%>
        </div>
        <style>
            .body{
                background-image: url("index.jpg");
            }
        </style>
        <div class="jumbotron text-center " >
            <h1>Binghamton's Online Library</h1>
            <p>We aim to spread knowledge
                <span class="glyphicon glyphicon-globe logo" style="color: ivory"></span> 
            </p>
        </div>
        <style>
            .jumbotron { 
                background-color:black;
                color: green;

            }
        </style>

        <div class="container col-sm-4 text-center" style="border:10px; background-color: black; color: white; float: center">
            <br><br>
            <form method="post" action="registerdb.jsp">
                <div class="form-group">
                    EMAIL<input type="text" class="form-control" name="email" value="" >
                </div>
                <div class="form-group">
                    ENTER PASSWORD<input type="password" class="form-control" name="password" value="" >
                </div>
                <div class="form-group">
                    RENTER PASSWORD<input type="password" class="form-control" name="tpassword" value="" >
                </div>
                <div class="form-group">
                    FIRST NAME<input type="text" class="form-control" name="fname" value="" >
                </div>
                <div class="form-group">
                    MIDDLE NAME<input type="text" class="form-control" name="mname" value="" >
                </div>
                <div class="form-group">
                    LAST NAME<input type="text" class="form-control" name="lname" value="" >
                </div>  
                <div class="form-group">
                    INTERESTS<input type="text" class="form-control" name="interest" value="" >
                </div>

                <button class="btn btn-default" type="submit">Register</button><br><br>
            </form>
             <p>Already registered? Login in <a href="index.jsp">here!</a></p>
            <strong>
                <font color="red"><c:if test="${not empty param.errMsg}">
                    <c:out value="${param.errMsg}" />
                    <a href="register.jsp">Go Back</a>
                </c:if></font>
                <font color="green"><c:if test="${not empty param.susMsg}">
                    <c:out value="${param.susMsg}" />
                    <a href="index.jsp">Go Back</a>
                </c:if></font>
            </strong>
        </div>
        <div style ="color: white;
             clear:both;
             text-align:center;
             padding:5px;
             position:fixed;
             bottom: 0;"> &copy; by Poorna Shivani Kaipuram

        </div>
    </body>
</html>
