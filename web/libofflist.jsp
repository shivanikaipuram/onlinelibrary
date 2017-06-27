<%-- 
    Document   : libofflist
    Created on : Jul 25, 2016, 9:41:28 PM
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
        <script src="//code.jquery.com/jquery-1.12.3.js"></script>
        <script src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.10.12/js/dataTables.bootstrap.min.js"></script>
        <link rel="stylesheet" type="text/css" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.12/css/dataTables.bootstrap.min.css" />
       <script>
            
            $(document).ready(function() {
    $('#example').DataTable();
} );
        </script>
        <title>Offline books</title>
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
            SELECT * FROM OffBooks;
        </sql:query>
        <h3 style="color:white">Go Home<a href="libindex.jsp"><span class="glyphicon glyphicon-circle-arrow-left"></span></a></h3>
        <div align="center" class="container">
            <table id = "example" style="background-color: black; color:white"border="1" cellpadding="5" class="table" class="table-responsive">
                <div class="jumbotron text-center " >

                    <h1>List of Books
                        <span class="glyphicon glyphicon-book" style="color: burlywood"></span> 
                    </h1>
                </div>
                <style>
                    .jumbotron { 
                        background: black;
                        color: green;
                    }
                </style>
                <thead>
                <tr>
                    <th>ISBN</th>
                    <th>BOOK NAME</th>
                    <th>AUTHOR</th>
                    <th>EDITION</th>
                    <th>DATE PUBLISHED</th>
                    <th>EMAIL</th>
                    <th>STATUS</th>
                    <th colspan="2">Action</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="bk" items="${list.rows}">
                    <tr>
                        <td><c:out value="${bk.ISBN}" /></td>
                        <td><c:out value="${bk.bookname}" /></td>
                        <td><c:out value="${bk.editor}" /></td>
                        <td><c:out value="${bk.edition}" /></td>
                        <td><c:out value="${bk.date_publish}" /></td>
                        <td><c:out value="${bk.email}" /></td>
                        <td><c:out value="${bk.Status}" /></td>
                        <td><a class="btn btn-info" href="editoffbook.jsp?isbn=<c:out value="${bk.ISBN}"/>"><span class="glyphicon glyphicon-pencil">Update</span></a></td>
                         <c:if test="${bk.Status == 'AVAILABLE'}">
                        <td><a class="btn btn-info" href="javascript:confirmGo('Sure to delete this record?','deloffbook.jsp?isbn=<c:out value="${bk.ISBN}"/>')"><span class="glyphicon glyphicon-trash">Delete</span></a></td>
                         </c:if>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <a class="btn btn-info" href="addoffbk.jsp">ADD BOOK</a>
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

