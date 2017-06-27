<%-- 
    Document   : editprofiledb
    Created on : Jul 26, 2016, 5:19:15 PM
    Author     : shivani
--%>

<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 <jsp:include page="home.jsp"></jsp:include>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
    </head>
    <body>
        <c:if test="${ empty param.email }">
            <c:redirect url="editprofile.jsp" >
                <c:param name="errMsg" value="Please enter your Email ID" />
            </c:redirect>
 
        </c:if>
        <c:if test="${ empty param.password or empty param.tpassword }">
            <c:redirect url="editprofile.jsp" >
                <c:param name="errMsg" value="Please enter your password" />
            </c:redirect>
 
        </c:if>
        <c:if test="${param.password != param.tpassword}">
            <c:redirect url="editprofile.jsp" >
                <c:param name="errMsg" value="Passwords are unequal" />
            </c:redirect>
            
        </c:if>
        <c:if test="${ empty param.fname }">
            <c:redirect url="editprofile.jsp" >
                <c:param name="errMsg" value="Please enter your First Name" />
            </c:redirect>
 
        </c:if>
        <c:if test="${ empty param.lname }">
            <c:redirect url="editprofile.jsp" >
                <c:param name="errMsg" value="Please enter your Last Name" />
            </c:redirect>
 
        </c:if>
        <c:if test="${ empty param.interest }">
            <c:redirect url="editprofile.jsp" >
                <c:param name="errMsg" value="Please enter your interests" />
            </c:redirect>
 
        </c:if>
       
        <sql:setDataSource var="jdbc/IndependentStudy" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/IStudyDB"
                           user="root"  password="Shivi1412"/>
 
 
        <sql:update dataSource="jdbc/IndependentStudy" var="result">
            UPDATE Registration SET password=?,tpassword=?,firstname=?,middlename=?,lastname=?,interest=?
            WHERE email = '${param.email}'
            <sql:param value="${param.password}" />
            <sql:param value="${param.tpassword}" />
            <sql:param value="${param.fname}" />
            <sql:param value="${param.mname}" />
            <sql:param value="${param.lname}" />
            <sql:param value="${param.interest}" />
        </sql:update>
        <c:if test="${result>=1}">
            <font size="5" color='green'> Congratulations ! You are registered successfully.</font>
 
            <c:redirect url="profile.jsp" >
                <c:param name="susMsg" value="Congratulations ! Your profile is updated! " />
            </c:redirect>
        </c:if> 
    </body>
</html>
