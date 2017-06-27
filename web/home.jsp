
<%-- 
    Document   : index
    Created on : Jun 30, 2016, 8:41:20 PM
    Author     : shivani
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Binghamton's Online Library</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        
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
        <div class="container">
            <div class="row">
                <div class="col-sm-4" style="color:white;background-color: black">
                    <h3 style="color: green">WELCOME <c:out value="${sessionScope['loginUser']}" />!</h3>
                    <p>We hope you are doing great today.</p>
                    <p>Start browsing our online collection of books!</p><br>
                </div>
                <div class="col-sm-4" style="color:white;background-color: black">
                    <h3 style="color: green">Special features!</h3>
                    <p>Not only can you read the books online...</p>
                    <p>You can even borrow the books you want to read later at home...</p><br>
                </div>
                <div class="col-sm-4" style="color:white;background-color: black">
                    <h3 style="color: green">Love us? <span class="glyphicon glyphicon-heart" style="color: red"></span></h3>
                    <p>Let us know by leaving an email given <a href="contactus.jsp">here</a>...</p>
                    <p>Refer us to your friends<span class="glyphicon glyphicon-heart"></span></p><br><br>
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
