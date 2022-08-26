<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*, com.mysql.jdbc.Driver"%>
<%@ page import="jakarta.servlet.http.*,jakarta.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Change Password</title>
</head>
<body>
<%
  if (request.getParameter("error") != null)
          out.println("<b>Your New password and confirm password does not match. Try again</b><br>");


%>

This is the change password page
<form action="comparepassword.jsp" method="post">
<input type=hidden name="username" id="username" value="admin@gmail.com">
New password : <input type="password" name="newpassword" id="newpassword">
Confirm Password : <input type="password" name="confirmpassword" id="confirmpassword">
<button>Submit</button>

</form>




</body>
</html>