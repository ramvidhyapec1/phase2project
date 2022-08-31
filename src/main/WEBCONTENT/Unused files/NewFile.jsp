<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String flightno=session.getAttribute("flightno").toString();
int flightnum=Integer.parseInt(flightno);
out.println(flightnum);
%>


onclick="location.href=this.href+''?flightno='+flightno;return false"

<input type="hidden" name="selected_flight_no" id="selected_flight_no" value="${row.flight_no}"/>
<c:set var="username" value="${row.username}"/>

 
 <c:choose>
 	
	 	<c:when test="${table.username = null }">
	 	<p> Please enter correct username</p>
	 	</c:when>
	 	
		<c:when test="${username.equals('admin@gmail.com')}">
	 	<c:redirect url="admin.jsp"/>
	 	</c:when>
	 	
	 	<c:when test="${username != null }">
	 	<c:redirect url="search.jsp"/>
	 	</c:when>
	 	
</c:choose>


<c:choose>
		<c:when test="${loggedinuser = null}">
			<c:out value="No such user exists"/>
			<%
		
				response.sendRedirect("login.jsp");				
			%>
		</c:when>  
		<c:when test="${loggedinuser != null}">
			
			<c:if test="${loggedinuser='admin@gmail.com'}">
				//We need to send the information of logged in user
				<%
				response.sendRedirect("admin.jsp");				
				%>
			</c:if>
			
			<c:if test="${loggedinuser !='admin@gmail.com'}">
				<%
				response.sendRedirect("search.jsp");
				%>
				
			</c:if>
		</c:when>
	</c:choose>


<%
Object NewPassword = request.getAttribute("newpassword");
Object ConfirmPassword = request.getAttribute("confirmpassword");
if (!NewPassword.equals(ConfirmPassword)){
	response.sendRedirect("changepassword.jsp?error=1");
}else if (NewPassword.equals(ConfirmPassword)){
	String Newpassword=NewPassword.toString();
}
%>

<c:set var="new" value="${param.newpassword}"/>
<c:set var="uname" value="${param.UserName}"/>
<c:out value="${uname}"/>


 
     
<!-- Updating the new password for the admin password -->
<sql:update dataSource="${db}" var="updatedpassword">
            UPDATE login SET password=? where username=?
            <sql
</sql:update>


<c:set var="sourcecity" scope="session" value="{param.sc}" />
<c:set var="destinationcity" scope="session" value="{param.dc}" />
<c:set var="noofpassengers" scope="session" value="{param.nop}" />
<c:set var="dateoftravel" scope="session" value="{param.dot}" />
<c:if test="${sourcecity == destinationcity}">
<c:redirect url="search.jsp?message=1"/>
</c:if>
<!-- This below line is also showing error -->
<c:out value="${dateoftravel}"/>
<c:out value="${sourcecity}"/>

<!--<fmt:parseDate value="${dateoftravel}" pattern="yyyy-MM-dd" var="parsedDateOfTravel"/>
<fmt:formatDate value="${dateoftravel}" pattern="MM/dd/yyyy" var="formattedDatOfTravel" />
-->
<c:out value="${dateoftravel}"/>



<!-- Error - jakarta.servlet.ServletException: jakarta.servlet.jsp.JspException: In &lt;parseDate&gt;, value attribute can not be parsed: "{param.dot}"

 -->
<!-- Getting connection to the SQL table -->
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"  
     url="jdbc:mysql://localhost:3306/phase2_project_flyaway"  
     user="root"  password="root"/>
    
<sql:query dataSource="${db}" var="rs">  
	SELECT * from flight_details where upper(source_city)=upper(?) and upper(destination_city)=upper(?) and date_of_travel=?
	<sql:param value="${sourcecity}"/>
	<sql:param value="${destinationcity}" />
	<sql:param value="${formattedDatOfTravel}" />
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
			<td><c:out value="${table.flight_class}"/></td>  <!-- this line is causing error not sure why -->
			<!-- error - /flightpage.jsp (line: [66], column: [7]) [${table.class}] contains invalid expression(s): [jakarta.el.ELException: Failed to parse the expression [${table.class}]] -->
		</tr>  
	</c:forEach>  
</table>


	

</body>
</html>