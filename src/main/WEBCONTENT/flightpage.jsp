<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*, com.mysql.jdbc.Driver"%>  
<%@ page import="jakarta.servlet.http.*,jakarta.servlet.*" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Flight page</title>
</head>
<body>

<!-- Getting connection to the SQL table -->
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"  
     url="jdbc:mysql://localhost:3306/phase2_project_flyaway"  
     user="root"  password="root"/>
<%
String dot=request.getParameter("dot");
out.println("value of date of travel is " + dot);
%>     
<sql:query dataSource="${db}" var="rs">  
	SELECT * from flight_details;  
</sql:query>      

<table border="2" width="100%">  
<tr>  
<th>Airline</th>  
<th>Price</th>  
<th>Flight No.</th>  
<th>Source City</th>  
<th>Destination City</th> 
<th>Departure time from source</th> 
<th>Arrival time at destination</th> 
<th>Total seats available</th> 
<th>Date of Travel</th>
<th>class</th>  
</tr>  
	<c:forEach var="table" items="${rs.rows}">  
		<tr>  
			<td><c:out value="${table.airlinename}"/></td>  
			<td><c:out value="${table.price}"/></td>  
			<a href="registerdetails.jsp"> 
			<td><c:out value="${table.flight_no}"/></td> 
			</a> 
			<td><c:out value="${table.source_city}"/></td> 
			<td><c:out value="${table.destination_city}"/></td>  
			<td><c:out value="${table.dep_time_from_source}"/></td>  
			<td><c:out value="${table.arr_time_to_destination}"/></td>  
			<td><c:out value="${table.seat_availability}"/></td>  
			<td><c:out value="${table.date_of_travel}"/></td>  
			<td><c:out value="${table.class}"/></td>   
		</tr>  
	</c:forEach>  
</table>
</body>
</html>