<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="jakarta.servlet.http.*,jakarta.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
  if (request.getParameter("message") != null)
          out.println("<b>Your Password has been changed successfully</b><br>");
%>
<br>

<form action="changepassword.jsp" method="post">
<button>Change password</button>
</form>
<br>
<form action="bookingdetails.jsp" method="post">
<button>Search for booking details</button>
</form>


</body>
</html>