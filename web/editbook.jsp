<%-- 
    Document   : editbook
    Created on : Jul 19, 2016, 11:16:03 PM
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
   
        <title>Edit Book</title>
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
            SELECT * from Books where ISBN=?;
            <sql:param value="${param.isbn}" />
        </sql:query>
        <h3 style="color:white">Go Home<a href="libindex.jsp"><span class="glyphicon glyphicon-circle-arrow-left"></span></a></h3>
        <div align="center" class="container">
            <form action="editbookdb.jsp" method="post">
                <table style="background-color: black; color:white"border="1" cellpadding="5" class="table" class="table-responsive">
                    <div class="jumbotron text-center " >

                        <h1>Update Book
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
                        <th>BOOK NAME</th>
                        <th>EDITOR</th>
                        <th>EDITION</th>
                        <th>DATE PUBLISHED</th>
                        <th>PDF</th>
                    </tr>
                    <c:forEach var="row" items="${result.rows}">
                        <tr style="color:black">
                            <td><input type="hidden" value="${param.isbn}" name="isbn"/>
                                <input type="text" value="${row.bookname}" name="bname"></td>
                            <td><input type="text" value="${row.editor}" name="editor"/></td>
                            <td><input type="text" value="${row.edition}" name="edition"/></td>
                            <td><input type="date" value="${row.date_publish}" name="date_publish" placeholder="YYYY/MM/DD"/></td>
                            <td><input type="file" value="${row.pdf}" name="pdf"/></td>
                            <td><button class="btn btn-default" type="submit">Update</button></td>
                        </tr>
                    </c:forEach>
                </table>
                 </form>
            <div style ="color: white;
                 clear:both;
                 text-align:center;
                 padding:5px;
                 position:fixed;
                 bottom: 0;"> &copy; by Poorna Shivani Kaipuram
            </div>
    </body>
</html>
