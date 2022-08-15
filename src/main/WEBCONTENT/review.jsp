<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Review Page</title>
</head>
<body>
<%
out.println("Please review the details and confirm");
out.println("Full name :"+request.getParameter("fn"));
out.println("Address :"+request.getParameter("address"));
out.println("Age :"+request.getParameter("age"));
out.println("Mobile :"+request.getParameter("mobile"));
out.println("Email/Username :"+request.getParameter("uname"));
out.println("Identity type :"+request.getParameter("iden_type"));
out.println("Email/Username :"+request.getParameter("iden"));


String iden_type=request.getParameter("iden_type");
  

  String iden=request.getParameter("iden");
 
String country=request.getParameter("country");



%>

</body>
</html>