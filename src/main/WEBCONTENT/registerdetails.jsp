<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*, com.mysql.jdbc.Driver"%>  
<%@ page import="jakarta.servlet.http.*,jakarta.servlet.*" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Details page</title>
</head>
<body>


<form action="review.jsp" method="post">
Full Name 			<input type="text" name="fn" id="fn"/><br>
Address 			<input type="text" name="address" id="address"/><br>
Age					<input type="number" name="age" id="age"/><br>
Mobile				<input type="number" name="mobile" id="mobile"/><br>
Email id / UserName <input type="email" name="uname" id="uname"/><br>
Identification 	<datalist id="iden">
    <option value="Addhar card">
    <option value="SSN">
    <option value="Passport">
    <option value="Voter ID">
    <option value="Driving License">
  </datalist>
  <input type="number" name="iden" id="iden" maxlength="25"/><br>
 
Country <input type="text" name="country" id="country"/><br>

</form>

</body>
</html>