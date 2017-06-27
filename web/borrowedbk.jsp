<%-- 
    Document   : borrowedbk
    Created on : Jul 26, 2016, 5:42:36 PM
    Author     : shivani
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

        <title>Borrowed books</title>
        <script>
            function confirmGo(m, u) {
                if (confirm(m)) {
                    window.location = u;
                }
            }
        </script>
    </head>
    <body class="body">
        <%@include file="header.jsp" %>
        <style>
        .body{
            background-image: url("home.jpg");
        }
    </style>
        <sql:setDataSource
            var="jdbc/IndependentStudy"
            driver="com.mysql.jdbc.Driver"
            url="jdbc:mysql://localhost:3306/IStudyDB"
            user="root" password="Shivi1412"
            />

        <sql:query var="list"   dataSource="jdbc/IndependentStudy">
            SELECT * FROM OffBooks WHERE email=?;
            <sql:param value="${loginUser}" />
        </sql:query>
            <h3 style="color:white">Go Home<a href="home.jsp"><span class="glyphicon glyphicon-circle-arrow-left"></span></a></h3>
    
        <div align="center" class="container">
            <table style="background-color: black; color:white" border="1" cellpadding="5" class="table" class="table-responsive">
                <div class="jumbotron text-center " >

                <h1>List of books you borrowed
                    <span class="glyphicon glyphicon-book" style="color: burlywood"></span> 
                </h1>
            </div>
            <style>
                .jumbotron { 
                    background: black;
                    color: green;
                }
            </style>
                <tr style="color: green">
                    <th>ISBN</th>
                    <th>BOOK NAME</th>
                    <th>EDITOR</th>
                    <th>EDITION</th>
                    <th>DATE PUBLISHED</th>
                    <th>STATUS</th>
                </tr>

                <c:forEach var="bk" items="${list.rows}">
                    <tr>

                        <td><c:out value="${bk.ISBN}" /></td>
                        <td><c:out value="${bk.bookname}" /></td>
                        <td><c:out value="${bk.editor}" /></td>
                        <td><c:out value="${bk.edition}" /></td>
                        <td><c:out value="${bk.date_publish}" /></td>
                        <td>
                            <c:if test="${bk.Status == 'AVAILABLE'}">
                                AVAILABLE<a href="borrow.jsp?isbn=<c:out value="${bk.ISBN}"/>">(Borrow)</a>
                            </c:if>

                            <c:if test="${bk.Status == 'UNAVAILABLE' && bk.email == sessionScope['loginUser']}">
                                UNAVAILABLE<a href="return.jsp?isbn=<c:out value="${bk.ISBN}"/>">(Return)</a>
                            </c:if> 

                            <c:if test="${bk.Status == 'UNAVAILABLE' && bk.email != sessionScope['loginUser']}">
                                <c:out value="${bk.Status}" />
                            </c:if> 

                        </td>
                    </tr>                  
                </c:forEach>
            </table>
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

