<%-- 
    Document   : editbookdb
    Created on : Jul 19, 2016, 11:16:39 PM
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
    <body>
        <sql:setDataSource var="jdbc/IndependentStudy" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/IStudyDB"
                           user="root"  password="Shivi1412"/>
        
        <sql:update dataSource="jdbc/IndependentStudy" var="count">
            UPDATE Books SET bookname = ?, editor=?, edition=?, date_publish=?, pdf=?
            WHERE ISBN='${param.isbn}'
            <sql:param value="${param.bname}" />
            <sql:param value="${param.editor}" />
            <sql:param value="${param.edition}" />
            <sql:param value="${param.date_publish}" />
            <sql:param value="${param.pdf}" />
        </sql:update>
        <c:if test="${count>=1}">
            <font size="5" color='green'> Congratulations ! Data updated
            successfully.</font> <a href="libbooklist.jsp"></a>    
            <c:redirect url="libbooklist.jsp" >
                <c:param name="susMsg" value="Book updated!" />
            </c:redirect>
        </c:if>
    </body>
</html>