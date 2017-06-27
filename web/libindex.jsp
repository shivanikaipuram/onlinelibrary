<%-- 
    Document   : libindex
    Created on : Jul 11, 2016, 9:09:26 PM
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
                    <li><a href='libindex.jsp'><span class="glyphicon glyphicon-home" style="color: yellow"></span>Home</a></li>
                    <li><a href='addbook.jsp'><span class="glyphicon glyphicon-book" style="color: burlywood"></span>Add books</a></li>
                    <li><a href='libbooklist.jsp'><span class="glyphicon glyphicon-book" style="color: burlywood"></span>Publications</a></li>
                    <li><a href='libofflist.jsp'><span class="glyphicon glyphicon-book" style="color: burlywood"></span>Resources</a></li>
                </ul>
            </div>
        </nav>
        <br><br>
        <div class="container">
            <div class="row">
                <div class="col-sm-12" style="color:white;background-color: black">
                    <h3 style="text-align:center ; color: green">WELCOME <c:out value="${sessionScope['loginUser']}" />!</h3>
                    <p style="text-align:center">We hope you are doing great today.</p>
                    <p style="text-align:center">Start browsing our online collection of books and make your desired changes!</p>
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