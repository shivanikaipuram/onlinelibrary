<%-- 
    Document   : addoffbk
    Created on : Jul 22, 2016, 5:44:19 PM
    Author     : shivani
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

        <title>Add Offline Books</title>
     
    </head>
    <body class="body">
        <%@include file="header.jsp" %>
        <style>
            .body{
                background-image: url("home.jpg");
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
        <nav class="navbar navbar-inverse" style="background-color:black">
            <div class="container-fluid">
                <ul class="nav navbar-nav">
                    <li><a href='libindex.jsp'><span class="glyphicon glyphicon-home" style="color: yellow"></span>Home</a></li>
                    <li><a href='addbook.jsp'><span class="glyphicon glyphicon-book" style="color: burlywood"></span>Add books</a></li>
                    <li><a href='libbooklist.jsp'><span class="glyphicon glyphicon-book" style="color: burlywood"></span>Publications</a></li>
                    <li><a href='libofflist.jsp'><span class="glyphicon glyphicon-book" style="color: burlywood"></span>Offline Resourses</a></li>
                </ul>
            </div>
        </nav>
        <div class="container col-sm-4 text-center" style="border:10px; background-color: black; color: white; float: center">
            <br><br>
            <form method="post" action="addoffbkdb.jsp">
                <div class="form-group">
                    ISBN<input type="text" class="form-control" name="isbn" value="" >
                </div>
                <div class="form-group">
                    BOOK NAME<input type="text" class="form-control" name="bname" value="" >
                </div>
                <div class="form-group">
                    AUTHOR<input type="text" class="form-control" name="editor" value="" >
                </div>
                <div class="form-group">
                    EDITION<input type="text" class="form-control" name="edition" value="" >
                </div>
                <div class="form-group">
                    DATE PUBLISHED<input type="date" class="form-control" name="date_publish" value="" placeholder="YYYY/MM/DD" >
                </div>
                <div class="form-group">
                    Status<select name="status" class="form-control">
                            <option>AVAILABLE</option>
                            <option>UNAVAILABLE</option>
                        </select>
                </div>
                <div class="form-group">
                    <input type="hidden" class="form-control" name="email" value="" >
                </div>
                <button class="btn btn-default" type="submit">Add Book</button><br><br>
            </form>

            <strong>
                <font color="red"><c:if test="${not empty param.errMsg}">
                    <c:out value="${param.errMsg}" />
                    <a href="index.jsp">Go Back</a>
                </c:if></font>
                <font color="green"><c:if test="${not empty param.susMsg}">
                    <c:out value="${param.susMsg}" />
                    <a href="index.jsp">Go Back</a>
                </c:if></font>
            </strong>
        </div>
        <br><br>
    </body>
</html>
