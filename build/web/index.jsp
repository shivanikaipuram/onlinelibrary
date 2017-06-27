<%-- 
    Document   : signin
    Created on : Jul 5, 2016, 4:47:19 PM
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
       
        <title>Sign In</title>
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
            <br><br>
            <div class="container col-sm-4 text-center" style="border:10px; background-color: black; color: white; float: center">
                <br><br>
                <form method="post" action="signindb.jsp" role="form">
                    <div class="form-group">
                        <input type="email" class="form-control" name = "login" id="login" value="" placeholder="Enter email">
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control" name = "password" id="password" value="" placeholder="Enter password">
                    </div>
                    <button class="btn btn-default" type="submit">Login</button>
                </form>

                <div>
                    <p>New User? Register <a href="register.jsp">here!</a></p>
                </div>
                <div>
                    <p>Librarian? Login in <a href="liblogin.jsp">here!</a></p>
                </div>
                <strong>
                    <font color="red"><c:if test="${not empty param.errMsg}">
                        <c:out value="${param.errMsg}" />
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
