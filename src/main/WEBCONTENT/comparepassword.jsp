<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*, com.mysql.jdbc.Driver"%>
<%@ page import="jakarta.servlet.http.*,jakarta.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<!-- Get the new password and confirm password and compare them both 
if they are not equal - send error message and send back to change password page
if they are equal - update the SQL database with the new password -->

<!--   This part of code deals when the new password does not match the confirm password 
<c:if test="${!param.newpassword == param.confirmpassword}">
it does not match
<c:redirect url="changepassword.jsp?error=1"/>
</c:if>

-->
<c:if test="${param.newpassword == param.confirmpassword}">
It matches
<c:set var="uname" value="${param.username}"/>

<!-- Getting connection to the SQL table -->
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"  
     url="jdbc:mysql://localhost:3306/phase2_project_flyaway"  
     user="root"  password="root"/>
     
<!-- Updating the new password for the admin password -->
<sql:update dataSource="${db}" var="updatedpassword">
            UPDATE login SET password=? where username=?
            <sql:param value="${param.newpassword}"/>
            <sql:param value="${uname}"/>
</sql:update>
<c:redirect url="admin.jsp?message=1"/>
</c:if>

</body>
</html>