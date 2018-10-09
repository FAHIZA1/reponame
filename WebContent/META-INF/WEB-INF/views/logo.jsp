<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign In</title>
</head>
<body>
<form action='<spring:url value="/signin"/>' method="POST">
Username
<input type="text"  name="uname" />
<br>
Password
<input type="password"  name="pwd" />
<input type="submit" value="login">
</form>

</body>
</html>