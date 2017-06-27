<%-- 
    Document   : addoffbkdb
    Created on : Jul 22, 2016, 5:47:11 PM
    Author     : shivani
--%>

<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
    </head>
    <body>
       
        <sql:setDataSource var="jdbc/IndependentStudy" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/IStudyDB"
                           user="root"  password="Shivi1412"/>
 
 
        <sql:update dataSource="jdbc/IndependentStudy" var="result">
            INSERT INTO OffBooks (ISBN, bookname, editor, edition, date_publish, Status, email) VALUES (?,?,?,?,?,?, ?);
            <sql:param value="${param.isbn}" />
            <sql:param value="${param.bname}" />
            <sql:param value="${param.editor}" />
            <sql:param value="${param.edition}" />
            <sql:param value="${param.date_publish}" />
            <sql:param value="${param.status}" />
            <sql:param value="${param.email}" />
        </sql:update>
        <c:if test="${result>=1}">
            <font size="5" color='green'> Congratulations ! You are registered successfully.</font>
 
            <c:redirect url="libofflist.jsp" >
                <c:param name="susMsg" value="Congratulations ! Your are registered! Sign In here!" />
            </c:redirect>
        </c:if> 
    </body>
</html>
