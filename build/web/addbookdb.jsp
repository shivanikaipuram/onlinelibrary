<%-- 
    Document   : addbookdb
    Created on : Jul 8, 2016, 12:38:39 PM
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
        <c:if test="${ empty param.isbn || empty param.bname|| empty param.editor|| empty param.edition|| empty param.date_publish || empty param.pdf}">
            <c:redirect url="addbook.jsp" >
                <c:param name="errMsg" value="Please fill all the details!" />
            </c:redirect>

        </c:if>
        <c:if test="${ not param.edition.matches('[0-9]+')}">
            <c:redirect url="addbook.jsp" >
                <c:param name="errMsg" value="Invalid edition!" />
            </c:redirect>
        </c:if>
        
        <sql:setDataSource var="jdbc/IndependentStudy" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/IStudyDB"
                           user="root"  password="Shivi1412"/>
 
 
        <sql:update dataSource="jdbc/IndependentStudy" var="result">
            INSERT INTO Books (ISBN, bookname, editor, edition, date_publish, pdf) VALUES (?,?,?,?,?,?);
            <sql:param value="${param.isbn}" />
            <sql:param value="${param.bname}" />
            <sql:param value="${param.editor}" />
            <sql:param value="${param.edition}" />
            <sql:param value="${param.date_publish}" />
            <sql:param value="${param.pdf}" />
        </sql:update>
        <c:if test="${result>=1}">
            <font size="5" color='green'> Book added successfully.</font>
 <a href="libbooklist.jsp"></a>    
            <c:redirect url="libbooklist.jsp" >
                <c:param name="susMsg" value="Book Added!" />
            </c:redirect>
        </c:if> 
    </body>
</html>
