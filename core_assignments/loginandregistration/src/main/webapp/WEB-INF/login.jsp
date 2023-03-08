<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" type="text/css" href="/css/login.css">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login and Registration</title>
</head>
<body>
	<div class="container w-75">
		<div>
			<h2>Welcome!</h2>
			<p>Join our growing community.</p>
		</div>
		<div>
			<h3>Register</h3>
			<form:form action="/register" method="post" modelAttribute="newUser">
				<div class="mb-3">
    				<form:label path="userName" class="form-label">User Name:</form:label>
        			<form:errors path="userName" class="text-danger"/>
        			<form:input path="userName" class="form-control"/>
  				</div>
  				<div class="mb-3">
    				<form:label path="email" class="form-label">Email:</form:label>
        			<form:errors path="email" class="text-danger"/>
        			<form:input type="email" path="email" class="form-control"/>
  				</div>
  				<div class="mb-3">
    				<form:label path="password" class="form-label">Password:</form:label>
        			<form:errors path="password" class="text-danger"/>
        			<form:input type="password" path="password" class="form-control"/>
  				</div>
  				<div class="mb-3">
    				<form:label path="confirm" class="form-label">Confirm Password:</form:label>
        			<form:errors path="confirm" class="text-danger"/>
        			<form:input type="password" path="confirm" class="form-control"/>
  				</div>
  				<div class="mb-3 d-flex justify-content-end">
    				<button type="submit">Submit</button>
				</div>
			</form:form>
		</div>
		<div>
			<h3>Log In</h3>
			<form:form action="/login" method="post" modelAttribute="newLoginUser">
  				<div class="mb-3">
    				<form:label path="email" class="form-label">Email:</form:label>
        			<form:errors path="email" class="text-danger"/>
        			<form:input type="email" path="email" class="form-control"/>
  				</div>
  				<div class="mb-3">
    				<form:label path="password" class="form-label">Password:</form:label>
        			<form:errors path="password" class="text-danger"/>
        			<form:input type="password" path="password" class="form-control"/>
  				</div>
  				<div class="mb-3 d-flex justify-content-end">
    				<button type="submit">Submit</button>
				</div>
			</form:form>
		</div>
	</div>

</body>
</html>