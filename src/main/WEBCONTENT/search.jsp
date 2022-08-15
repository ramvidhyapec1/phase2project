<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search for flights </title>
</head>
<body>
<form action="flightpage.jsp" method="post">
Date of travel  <input type="date" name="dot" id="dot"/><br>
Source City 	<input type="text" name="sc" id="sc"/><br>
Destination City<input type="text" name="dc" id="dc"/><br>
No of Passengers<input type="number" name="nop" id="nop"/><br>
<button>Search</button>
</form>

</body>
</html>