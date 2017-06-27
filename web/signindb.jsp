<%-- 
    Document   : signindb
    Created on : Jul 7, 2016, 1:24:34 PM
    Author     : shivani
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign In</title>
    </head>
    <body>
        <c:if test="${ empty param.login }">
            <c:redirect url="index.jsp" >
                <c:param name="errMsg" value="Please enter your Email ID" />
            </c:redirect>

        </c:if>
        <c:if test="${ empty param.password }">
            <c:redirect url="index.jsp" >
                <c:param name="errMsg" value="Please enter your password" />
            </c:redirect>
        </c:if>

        <c:if test="${not empty param.login and not empty param.password}">
            <sql:setDataSource var="jdbc/IndependentStudy" driver="com.mysql.jdbc.Driver"
                               url="jdbc:mysql://localhost/IStudyDB"
                               user="root"  password="Shivi1412"/>

            <sql:query var="sign" scope="session" dataSource="jdbc/IndependentStudy">
                select count(*) as vals from Registration
                where email='${param.login}'
                and password='${param.password}'
            </sql:query>


            <c:forEach items="${sign.rows}" var="r">
                <c:choose>
                    <c:when test="${r.vals > 0}">
                        <c:set scope="session"
                               var="loginUser"
                               value="${param.login}"/>
                        <c:redirect url="home.jsp"/>
                    </c:when>
                    <c:otherwise>
                        <c:redirect url="index.jsp" >
                            <c:param name="errMsg" value="Username/password incorrect! Please enter again." />
                        </c:redirect>
                    </c:otherwise>
                </c:choose>

            </c:forEach>

        </c:if>
    </body>

</html>

