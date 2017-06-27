<%-- 
    Document   : about
    Created on : Jul 5, 2016, 4:38:16 PM
    Author     : shivani
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>About us</title>
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <style>
            .carousel-inner > .item > img,
            .carousel-inner > .item > a > img {
                width: 60%;
                margin: auto;
            }
        </style>
    </head>
    <body class="body">
        <style>
            .body{
                background-color: black;
            }
        </style>
        <%@include file="header.jsp" %>
        <div class="jumbotron text-center " >

            <h1>About Us
                <span class="glyphicon glyphicon-heart" style="color: red"></span> 
            </h1>
        </div>
        <style>
            .jumbotron { 
                background-color:black;
                color: green;
            }
        </style>
        
        <div class="container">
            <br>
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                    <li data-target="#myCarousel" data-slide-to="3"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <img src="abt1.jpg" alt="library" width="460" height="345">
                        <div class="carousel-caption">
                            <h2>Love reading?</h2>
                            <p><strong>You have come to the right place. This online library will enable you to have a best experience in improving your knowledge.</strong></p>
                        </div>
                    </div>

                    <div class="item">
                        <img src="abt2.jpg" alt="library" width="460" height="345">
                        <div class="carousel-caption">
                            <h2>How?</h2>
                            <p><strong>In this library you can read as many books as you like online without having to wait for it's availability.</strong></p>
                        </div>
                    </div>

                    <div class="item">
                        <img src="abt3.jpg" alt="library" width="460" height="345">
                        <div class="carousel-caption">
                            <h2>Other resources?</h2>
                            <p><strong>Not only do we let you read the books online, we also allow you to borrow books and take them home with you and also view your list of borrowed books to return them later.</strong></p>
                        </div>
                    </div>

                    <div class="item">
                        <img src="abt4.jpg" alt="library" width="460" height="345">
                        <div class="carousel-caption">
                            <p><strong>Our modern interface will make reading fun and let you escape on an amazing journey into your book.</strong></p>
                        </div>
                    </div>
                </div>

                <!-- Left and right controls -->
                <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
        <div class="container" >
            <ul class="pager">
                <li><a href="home.jsp">Back</a></li>
            </ul>
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
