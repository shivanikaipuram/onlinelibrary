<%-- 
    Document   : borrow
    Created on : Jul 22, 2016, 5:57:12 PM
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
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

        <title>Borrow Book</title>
    </head>
    <body class="body">
        <%@include file="header.jsp" %>
        <style>
            .body{
                background-image: url("home.jpg");
            }
        </style>
        <sql:setDataSource var="jdbc/IndependentStudy" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/IStudyDB"
                           user="root"  password="Shivi1412"/>


        <sql:query dataSource="jdbc/IndependentStudy" var="result">
            SELECT * from OffBooks where ISBN=?;
            <sql:param value="${param.isbn}" />
        </sql:query>
        <h3 style="color:white">Go Home<a href="home.jsp"><span class="glyphicon glyphicon-circle-arrow-left"></span></a></h3>

        <div align="center" class="container">
                <div class="jumbotron text-center " >

                    <h1>List of Offline Books
                        <span class="glyphicon glyphicon-book" style="color: brown"></span> 
                    </h1>
                </div>
                <style>
                    .jumbotron { 
                        background: black;
                        color: green;
                    }
                </style>
                <div class="container col-sm-6 text-center" style="border:10px; background-color: black; color: white; float: center">

                    <form action="borrowdb.jsp" method="post">
                        <p>Are you sure you want to borrow???</p>
                        <button class="btn btn-default" type="submit">Borrow</button><br>
                        <table>     
                            <c:forEach var="row" items="${result.rows}">
                                <tr>
                                    <td>
                                        <input type="hidden" value="${param.isbn}" name="isbn"/>
                                        <input type="hidden" value="${row.bookname}" name="bname">
                                        <input type="hidden" value="${row.editor}" name="editor"/>
                                        <input type="hidden" value="${row.edition}" name="edition"/>
                                        <input type="hidden" value="${row.date_publish}" name="date_publish"/> 
                                        <input type="hidden" value="UNAVAILABLE" name="status"/>
                                        <input type="hidden" value="${loginUser}" name="email"/></td>
                                </tr>
                            </c:forEach>
                        </table>
                        <a href="resources.jsp">Go Back</a>
                    </form>
                </div>
                </body>
                </html>
