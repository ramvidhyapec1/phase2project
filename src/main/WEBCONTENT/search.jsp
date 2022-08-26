<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search for flights </title>
</head>
<body>
<%

if(request.getParameter("message") != null){
	out.println("<b>Source city and Destination City cannot be the same. Please select different options.");
}
%>
<form action="flightpage.jsp" method="post">

Date of travel(YYYY-MM-DD)	:<input type="date" required="required" name="dot" id="dot"/><br>
<br>
Source City		:<select id="sc" name="sc">
  <option value="chennai">Chennai</option>
  <option value="delhi">Delhi</option>
</select>
<br>
Destination City:<select id="dc" name="dc">
  <option value="chennai">Chennai</option>
  <option value="delhi">Delhi</option>
</select><br>
<br>
No of Passengers:<input type="number" name="nop" id="nop"/><br>
<br>
<button>Search</button>
</form>

</body>
</html>