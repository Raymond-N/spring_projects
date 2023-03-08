<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="/css/newDojo.css">
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Dojo</title>
</head>
<body>
	<div class="container">
		<div class="d-flex justify-content-between">
			<div class="w-75">
				<h1>List of Dojos</h1>
				<ol class="list-group list-group-numbered mt-3">
					<c:forEach var="dojo" items="${dojos}">
  					<li class="list-group-item"><a href="/dojos/${dojo.id}"><c:out value="${dojo.name}"/></a></li>
  					</c:forEach>
				</ol>
			</div>
			<div class="w-25 d-flex justify-content-end align-items-center">
				<a href="/ninjas/new">Create Ninja</a>
			</div>
		</div>
		<div class="d-flex justify-content-center mt-5">
			<div class="w-50">
				<h1>New Dojo</h1>
				<form:form action="/dojos/new" method="post" modelAttribute="dojo">
					<div class="mb-3">
    					<form:label path="name" class="form-label">Name:</form:label>
        				<form:errors path="name" class="text-danger"/>
        				<form:input path="name" class="form-control"/>
  					</div>
  					<div class="mb-3 d-flex justify-content-end">
    					<button type="submit">Create</button>
					</div>
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>