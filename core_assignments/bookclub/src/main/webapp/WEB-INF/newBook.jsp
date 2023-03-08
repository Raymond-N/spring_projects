<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" type="text/css" href="/css/newBook.css">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book Share</title>
</head>
<body>
	<div class="container">
		<div class="d-flex justify-content-between align-items-center mb-5">
			<h1>Add a Book to Your Shelf!</h1>
			<a href="/books">Back to the shelves</a>
		</div>
		<div class="d-flex align-items-center justify-content-center">
			<form:form action="/books" method="post" modelAttribute="book" class="w-50">
				<form:input type="hidden" path="user" value="${user.id}"/>
				<div class="mb-3">
    				<form:label path="title" class="form-label">Title:</form:label>
        			<form:errors path="title" class="text-danger"/>
        			<form:input path="title" class="form-control"/>
  				</div>
  				<div class="mb-3">
    				<form:label path="author" class="form-label">Author:</form:label>
        			<form:errors path="author" class="text-danger"/>
        			<form:input path="author" class="form-control"/>
  				</div>
  				<div class="mb-3">
        			<form:label path="thoughts" class="form-label">My thoughts:</form:label>
        			<form:errors path="thoughts" class="text-danger"/>     
        			<form:textarea path="thoughts" class="form-control" rows="3"/>
				</div>
				<div class="mb-3 d-flex justify-content-end">
    				<button type="submit">Submit</button>
				</div>	
			</form:form>
		</div>
	</div>

</body>
</html>