<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>second.com</title>
</head>
<body>
  <h2>Dashboard for user2 and user3</h2>
  <hr />
  <h3>Acessing with spring security  </h3>
  <security:authorize access="isAuthenticated()">
     <b>Hello user2 and user3 <security:authentication property="principal.username" />!</b>
  </security:authorize>
  <br />
  <security:authorize access="isAuthenticated()">
    
     <a href="logout">Logout</a>
  </security:authorize>
</body>
</html>