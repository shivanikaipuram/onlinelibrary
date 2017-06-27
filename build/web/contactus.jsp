<%-- 
    Document   : contactus
    Created on : Aug 9, 2016, 4:45:35 PM
    Author     : shivani
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <title>Contact us</title>
    </head>
    <body class="body">
        <style>
            .body{
                background-image: url("home.jpg");
            }
        </style>
        <%@include file="header.jsp" %>
        <div class="jumbotron text-center " >
            
            <h1 >Binghamton's Online Library</h1>
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
         <nav class="navbar navbar-inverse" style="background-color:black">
            <div class="container-fluid">
                <ul class="nav navbar-nav">
                    <li><a href='home.jsp'><span class="glyphicon glyphicon-home" style="color: yellow"></span>Home</a></li>
                    <li><a href='profile.jsp'><span class="glyphicon glyphicon-user" style="color: lightskyblue"></span>Profile</a></li>
                    <li><a href='about.jsp'><span class="glyphicon glyphicon-heart" style="color: red"></span>About us</a></li>
                    <li><a href='booklist.jsp'><span class="glyphicon glyphicon-book" style="color: burlywood"></span>Online Publications</a></li>
                    <li><a href='resources.jsp'><span class="glyphicon glyphicon-book" style="color: burlywood"></span>Offline Publications</a></li>
                    <li><a href='borrowedbk.jsp'><span class="glyphicon glyphicon-book" style="color: burlywood"></span>Borrowed Books</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href='contactus.jsp'><span class="glyphicon glyphicon-earphone"></span>Contact us</a></li>
                </ul>
            </div>
        </nav>
        <br><br>
        
        <div class="container" style="text-align:center">
            <div class="row">
                <div class="col-sm-12" style="color:white;background-color: black">
                    <br>
                    <img src="shivani.jpg" class="img-circle" alt="Shivani Kaipuram" width="100" height="100">
                    <br>
                     
                <div class="col-sm-12" style="color:white;background-color: black">
                    <h3 style="color: green">Contact us here!</h3>
                    <p><span class="glyphicon glyphicon-user" style="color: lightskyblue">Poorna Shivani Kaipuram</span></p>
                    <p><span class="glyphicon glyphicon-earphone" style="color: darkorange">(607)-761-0223</span></p>
                    <p><span class="glyphicon glyphicon-envelope" style="color: antiquewhite">pkaipur1@binghamton.edu</span></p>
                    <br>
                </div>
                </div>
        </div>
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
