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

<!-- Getting the values from the user and storing this in a  variable -->
<c:set var="username1" value="${param.uname}"/>
<c:set var="password1" value="${param.pword}"/>

<!-- Getting connection to the SQL table -->
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"  
     url="jdbc:mysql://localhost:3306/phase2_project_flyaway"  
     user="root"  password="root"/> 
    
<!-- Getting value of the password for the username uname -->
<sql:query dataSource="${db}" var="rs">
SELECT * FROM login WHERE username=? and password=?
<sql:param value="${username1}"/>
<sql:param value="${password1}"/>
</sql:query>

<c:forEach var="table" items="${rs.rows}">
	<c:set var="loggedinuser" scope="page" value="${table.username}"/>
	<c:set var="loggedinuserpassword" scope="page" value="${table.password}"/>
	
</c:forEach>

<!-- Case 1 - When username and password is not in the DB - It will redirect to login page with error -->
<!-- Case 2 - when username and password is mismatch - It will redirect to login page with error-->
<!-- Case 3 - When username is 'Admin@gmail.com' - It will redirect to admin page -->
<!-- Case 4 - When username is valid and not admin - It will redirect to search page -->
 <% 
 Object username=pageContext.getAttribute("loggedinuser");
 Object password=pageContext.getAttribute("loggedinuserpassword");
 if(username !=null && !username.toString().isEmpty()){
	 session.setAttribute("UserName", username.toString());
	 session.setAttribute("PassWord", password.toString());
 if (username.toString().equalsIgnoreCase("admin@gmail.com")){
	 response.sendRedirect("admin.jsp");
 }
 if (!username.toString().equalsIgnoreCase("admin@gmail.com")){
	 response.sendRedirect("search.jsp");
 }
 }else{
	 response.sendRedirect("login.jsp?error=1");
 }
 %>
</body>
</html>