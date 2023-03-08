<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" type="text/css" href="/css/index.css">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Read Share</title>
</head>
<body>
	<div class="container mb-5">
		<div class="mb-5">
			<h1 class="mb-3">Book Club</h1>
			<p>A place for friends to share thoughts on books.</p>
		</div>
		<div class="row gx-5">
			<div class="col">
				<h3 class="mb-3">Register</h3>
				<form:form action="/register" method="post" modelAttribute="newUser">
				<div class="mb-3">
    				<form:label path="name" class="form-label">Name:</form:label>
        			<form:errors path="name" class="text-danger"/>
        			<form:input path="name" class="form-control"/>
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
			<div class="col">
				<h3 class="mb-3">Login</h3>
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
	</div>

</body>
</html>