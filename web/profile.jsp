<%-- 
    Document   : profile
    Created on : Jul 26, 2016, 4:13:12 PM
    Author     : shivani
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

        <title>Profile</title>
    </head>
    <sql:setDataSource var="jdbc/IndependentStudy" driver="com.mysql.jdbc.Driver"
                       url="jdbc:mysql://localhost/IStudyDB"
                       user="root"  password="Shivi1412"/>

    <sql:query dataSource="jdbc/IndependentStudy" var="result">
        SELECT * from Registration where email=?;
        <sql:param value="${loginUser}" />
    </sql:query>

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
        <section class="container" style="color:white;background-color: black;text-align:center">
        <div class="login">
            <h1 style="color:green">Hello, ${loginUser}..This is your profile!</h1>
            <form >
                <c:forEach var="row" items="${result.rows}"><br>
                    <h4>Email : ${row.email} </h4><br>
                    <h4>Name : ${row.firstname} ${row.middlename} ${row.lastname}</h4><br>
                    <h4>Interests : ${row.interest}</h4><br>
                    </c:forEach>
            </form>
            <br>
            <h3 style="color: green">Edit your profile <a href = "editprofile.jsp">here!</a></h3>
        </div>


    </section>
</body>
</html>
