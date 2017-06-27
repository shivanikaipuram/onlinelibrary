<%-- 
    Document   : return
    Created on : Jul 24, 2016, 9:07:22 PM
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
        
        <title>Return Book</title>
    </head>
    <body class="body">
        <%@include file="header.jsp" %>
    <style>
        .body{
            background-image: url("home.jpg");
        }
    </style>
    <h3 style="color:white">Go Home<a href="home.jsp"><span class="glyphicon glyphicon-circle-arrow-left"></span></a></h3>
    
    <div align="center" class="container">
               <div class="jumbotron text-center " >

                <h1>List of Offline Books
                    <span class="glyphicon glyphicon-book"style="color: burlywood"></span> 
                </h1>
            </div>
            <style>
                .jumbotron { 
                    background: black;
                    color: green;
                }
            </style>

        <sql:setDataSource var="jdbc/IndependentStudy" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/IStudyDB"
                           user="root"  password="Shivi1412"/>


        <sql:query dataSource="jdbc/IndependentStudy" var="result">
            SELECT * from OffBooks where ISBN=?;
            <sql:param value="${param.isbn}" />
        </sql:query>
 <div class="container col-sm-6 text-center" style="border:10px; background-color: black; color: white; float: center">

        <form action="borrowdb.jsp" method="post">
            <table>
               
                    <form action="borrowdb.jsp" method="post">
                        <p>Are you sure you want to return???</p>
                        <button class="btn btn-default" type="submit">Return</button><br>
                 <c:forEach var="row" items="${result.rows}">
                    <tr>
                        <td>
                        <input type="hidden" value="${param.isbn}" name="isbn"/>
                        <input type="hidden" value="${row.bookname}" name="bname">
                        <input type="hidden" value="${row.editor}" name="editor"/>
                        <input type="hidden" value="${row.edition}" name="edition"/>
                        <input type="hidden" value="${row.date_publish}" name="date_publish"/> 
                        <input type="hidden" value="AVAILABLE" name="status"/>
                        <input type="hidden" value="" name="email"/></td>
                     </tr>
                </c:forEach>
            </table>
            <a href="resources.jsp">Go Back</a>
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
