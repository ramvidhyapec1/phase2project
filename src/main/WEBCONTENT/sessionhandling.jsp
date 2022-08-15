<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*, com.mysql.jdbc.Driver"%>
<%@ page import="jakarta.servlet.http.*,jakarta.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
This is the sessionhandling page
<!-- Getting the values from the user and storing this ina  variable -->

<%session.setAttribute("username", request.getAttribute("uname"));
session.setAttribute("password", request.getAttribute("pword"));
%>
<c:out value="${username}"/>
<c:out value="${password}"/>

<!-- Getting connection to the SQL table -->
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"  
     url="jdbc:mysql://localhost:3306/phase2_project_flyaway"  
     user="root"  password="root"/> 
    
<!-- Getting value of the password for the username uname -->
<sql:query dataSource="${db}" var="pword_db">
SELECT password FROM login WHERE username=?
<sql:param value="${param.uname}"></sql:param>
</sql:query>
<c:out value="${username}"/>


	

</body>
</html>