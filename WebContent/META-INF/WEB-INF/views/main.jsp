<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
  pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
  prefix="security"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>WELCOME PAGE</title>
</head>
<body>
  <h2>This page is guarded by Spring Security</h2>
  <h3> WELCOME TO LOGIN PAGE</h3>
  <hr />
  <h3>
    Welcome ! Please login as per access provided*-*
    <security:authorize access="isAnonymous()">
         
     </security:authorize>
    
    <security:authorize access="isAuthenticated()">
      <security:authentication property="principal.username" />
    </security:authorize>
  </h3>
  <security:authorize access="isAnonymous()">
    Login as <a href="1stuserand2nduser">Manager / Seller</a> or <a href="2nduserand3rduser">Seller/ Customer</a>
  </security:authorize>
  <security:authorize access="isAuthenticated()">
    <security:authorize access="hasAnyRole('ROLE_USER1','ROLE_USER2')">
      <a href="1stuserand2nduser">Link_Manager+Seller</a>
    </security:authorize>
    <security:authorize access="hasAnyRole('ROLE_USER2','ROLE_USER3')">
      <a href="2nduserand3rduser">Link_Seller+Customer</a>
    </security:authorize>
    <a href="logout">Click here to logout</a>
  </security:authorize>
</body>
</html>