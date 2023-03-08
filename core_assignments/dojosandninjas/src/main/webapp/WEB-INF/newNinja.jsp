<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="/css/newNinja.css">
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Ninja</title>
</head>
<body>
	<div class="container">
		<div class="w-75">
			<div class="d-flex justify-content-between align-items-center">
				<h1>New Ninja</h1>
				<a href="/">Home</a>
			</div>
				<form:form action="/ninjas/new" method="post" modelAttribute="ninja">
					<div class="mb-3">
						<form:label path="dojo" class="form-label">Dojo:</form:label>
    					<form:select path="dojo" class="form-select" aria-label="Default select example">
  							<option selected>Select a Dojo</option>
  							<c:forEach var="dojo" items="${dojos}">
  							<option value="${dojo.id}"><c:out value="${dojo.name}"/></option>
  							</c:forEach>
						</form:select>
  					</div>
					<div class="mb-3">
    					<form:label path="firstName" class="form-label">First Name:</form:label>
        				<form:errors path="firstName" class="text-danger"/>
        				<form:input path="firstName" class="form-control"/>
  					</div>
  					<div class="mb-3">
    					<form:label path="lastName" class="form-label">Last Name:</form:label>
        				<form:errors path="lastName" class="text-danger"/>
        				<form:input path="lastName" class="form-control"/>
  					</div>
  					<div class="mb-3">
    					<form:label path="age" class="form-label">Age:</form:label>
        				<form:errors path="age" class="text-danger"/>
        				<form:input path="age" class="form-control"/>
  					</div>
  					<div class="mb-3 d-flex justify-content-end">
    					<button type="submit">Create</button>
					</div>
				</form:form>
			</div>
	</div>

</body>
</html>