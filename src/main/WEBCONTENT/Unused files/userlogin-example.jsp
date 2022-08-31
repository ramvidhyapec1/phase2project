<%@ pagelanguage="java"contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ pageimport="java.io.*,java.util.*,java.sql.*, com.mysql.jdbc.Driver"%>  
<%@ pageimport="javax.servlet.http.*,javax.servlet.*"%>  
<%@ tagliburi="http://java.sun.com/jsp/jstl/core"prefix="c"%>  
<%@ tagliburi="http://java.sun.com/jsp/jstl/sql"prefix="sql"%> 
<sql:setDataSourcevar="db"driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/flight"
     user="root"password="root"/>   
     
     
<c:iftest="${param.uid!=null}">
<sql:querydataSource="${db}"var="records">
    select count(*)from User_Login where user_id=? and password=?
   <sql:paramvalue="${param.uid}"/>
   <sql:paramvalue="${param.psw}"/>
</sql:query>
   <c:iftest="${records.rowsByIndex[0][0]==1}">
   	<c:setvar="session"value="${param.uid}"scope="session"/>
       <c:redirecturl="search.jsp"></c:redirect>
   </c:if>
   <c:iftest="${records.rowsByIndex[0][0]==0}">
   		<fieldset>
   			<caption>Error: </caption>
   			<fontcolor="red">Invalid Credentials</font>
   		</fieldset>
   </c:if>
   </c:if>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<metacharset="UTF-8">
  <title>Login Form</title>
  <linkrel="stylesheet"href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<linkrel="stylesheet"href="style.css">
</head>
<body>

	   
  <divid="login-form-wrap">
  	<h2>Login</h2>
			<formid="login-form"method="get"action="userlogin.jsp">
                <divclass="form-control">
                    <labelclass="required"for="username">Email</label>
                    <inputrequiredtype="email"name="uid"id="uid"placeholder="Enter Email">
                </div>
                <divclass="form-control">
                    <labelclass="required"for="password">Password</label>
                    <inputrequiredtype="password"name="psw"id="psw"placeholder="Enter Password">
                </div>
                <divclass="form-btns">
                    <buttontype="submit"name="login"class="btn w-100">Login</button>
                </div>
            </form>
        	<divid="create-account-wrap">
    			<p>Not a member? <ahref="Register.jsp">Create Account</a><p>
    			<p> <ahref="adminlogin.jsp">Admin Login</a><p>
  			</div>
</div>
</body>
</html>
