<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.text.SimpleDateFormat, java.util.*, com.mysql.jdbc.Driver"%>  
<%@ page import="jakarta.servlet.http.*,jakarta.servlet.*" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Flight page</title>
	</head>
	<body>
		<%String sc=request.getParameter("sc");
		String dc=request.getParameter("dc");
		int nop=Integer.parseInt(request.getParameter("nop"));
		String date1=request.getParameter("dot");
		Date dot=new SimpleDateFormat("dd/MM/YYYY").parse(date1);
		if (sc == dc){
			response.sendRedirect("search.jsp?message=1");
		}
		
		%>
	
		<!-- Getting connection to the SQL table -->
		<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"  
		     url="jdbc:mysql://localhost:3306/phase2_project_flyaway"  
		     user="root"  password="root"/>
		<c:set var="sc1" value="${sc}"/>
		<c:out value="${sc1}"/>
		<c:set var="dc1" value="${dc}"/>
		<c:out value="${dc1}"/>
	
	
	
	</body>
</html>

<!-- Flightpage  -->