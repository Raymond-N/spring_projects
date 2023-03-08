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
<title>Project Manager</title>
</head>
<body>
	<div class="container">
		<div class="d-flex flex-column align-items-center">
			<h1 style="font-size: xxx-large;">Project Manager</h1>
			<p style="font-size: medium;">A place for teams to manage projects.</p>
		</div>
		<div class="row gx-5 mt-5">
			<div class="col">
				<h3 class="mb-3">Register</h3>
				<form:form action="/register" method="post" modelAttribute="newUser" class="mt-4">
					<div class="row mb-3 d-flex justify-content-between align-items-center">
  						<div class="col-auto">
    						<form:label path="firstName" class="col-form-label">First Name:</form:label>
    						<form:errors path="firstName" class="text-danger"/>
  						</div>
  						<div class="col-auto">
    						<form:input path="firstName" class="form-control"/>
  						</div>
					</div>
  					<div class="row mb-3 d-flex justify-content-between align-items-center">
  						<div class="col-auto">
    						<form:label path="lastName" class="col-form-label">Last Name:</form:label>
    						<form:errors path="lastName" class="text-danger"/>
  						</div>
  						<div class="col-auto">
    						<form:input path="lastName" class="form-control"/>
  						</div>
					</div>
  					<div class="row mb-3 d-flex justify-content-between align-items-center">
  						<div class="col-auto">
    						<form:label path="email" class="col-form-label">Email:</form:label>
    						<form:errors path="email" class="text-danger"/>
  						</div>
  						<div class="col-auto">
    						<form:input path="email" class="form-control"/>
  						</div>
					</div>
  					<div class="row mb-3 d-flex justify-content-between align-items-center">
  						<div class="col-auto">
    						<form:label path="password" class="col-form-label">Password:</form:label>
    						<form:errors path="password" class="text-danger"/>
  						</div>
  						<div class="col-auto">
    						<form:input type="password" path="password" class="form-control"/>
  						</div>
					</div>
  					<div class="row mb-3 d-flex justify-content-between align-items-center">
  						<div class="col-auto">
    						<form:label path="confirm" class="col-form-label">Confirm Password:</form:label>
    						<form:errors path="confirm" class="text-danger"/>
  						</div>
  						<div class="col-auto">
    						<form:input type="password" path="confirm" class="form-control"/>
  						</div>
					</div>
  					<div class="mb-3 d-flex justify-content-end">
    					<button type="submit">Submit</button>
					</div>
				</form:form>
			</div>
			<div class="col">
				<h3 class="mb-3">Log In</h3>
				<form:form action="/login" method="post" modelAttribute="newLoginUser" class="mt-4 w-75">
  					<div class="row mb-3 d-flex justify-content-between align-items-center">
  						<div class="col-auto">
    						<form:label path="email" class="col-form-label">Email:</form:label>
    						<form:errors path="email" class="text-danger"/>
  						</div>
  						<div class="col-auto">
    						<form:input path="email" class="form-control"/>
  						</div>
					</div>
  					<div class="row mb-3 d-flex justify-content-between align-items-center">
  						<div class="col-auto">
    						<form:label path="password" class="col-form-label">Password:</form:label>
    						<form:errors path="password" class="text-danger"/>
  						</div>
  						<div class="col-auto">
    						<form:input type="password" path="password" class="form-control"/>
  						</div>
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