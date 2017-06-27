<%-- 
    Document   : borrowdb
    Created on : Jul 23, 2016, 8:25:28 PM
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
        <title>JSP Page</title>
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
                    <span class="glyphicon glyphicon-book"style="color: brown"></span> 
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
        
        <sql:update dataSource="jdbc/IndependentStudy" var="count">
            UPDATE OffBooks SET bookname = ?, editor=?, edition=?, date_publish=?, Status=?, email = ?
            WHERE ISBN='${param.isbn}'
            <sql:param value="${param.bname}" />
            <sql:param value="${param.editor}" />
            <sql:param value="${param.edition}" />
            <sql:param value="${param.date_publish}" />
            <sql:param value="${param.status}" />
            <sql:param value="${param.email}" />
        </sql:update>
        <c:if test="${count>=1}">
            <font size="5" color='green'> Congratulations ! Data updated
            successfully.</font>
              <a href="resources.jsp">Go Back</a>          
        </c:if>
                <div style ="color: white;
         clear:both;
         text-align:center;
         padding:5px;
         position:fixed;
         bottom: 0;"> &copy; by Poorna Shivani Kaipuram

    </div>
    </body>
</html>