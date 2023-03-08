<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="/css/editExpense.css">
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Expense</title>
</head>
<body>
	<div class="container">
		<div class="mb-3 d-flex justify-content-evenly align-items-center">
			<h1>Edit Expense</h1>
			<a href="/expenses">Go back</a>
		</div>
		<div class="d-flex align-items-center justify-content-center">
			<form:form action="/expenses/${expense.id}" method="post" modelAttribute="expense" class="w-50">
				<input type="hidden" name="_method" value="put">
				<div class="mb-3">
        			<form:label path="name" class="form-label">Expense Name:</form:label>
        			<form:errors path="name" class="text-danger"/>
        			<form:input path="name" class="form-control"/>
				</div>
				<div class="mb-3">
        			<form:label path="vendor" class="form-label">Vendor:</form:label>
        			<form:errors path="vendor" class="text-danger"/>
        			<form:input path="vendor" class="form-control"/>
				</div>
				<div class="mb-3">
        			<form:label path="amount" class="form-label">Amount:</form:label>
        			<form:errors path="amount" class="text-danger"/>
        			<form:input step="0.01" type="number" path="amount" class="form-control"/>
				</div>
				<div class="mb-3">
        			<form:label path="description" class="form-label">Description:</form:label>
        			<form:errors path="description" class="text-danger"/>     
        			<form:textarea path="description" class="form-control"/>
				</div>
				<div class="mb-3 d-flex justify-content-end">
    				<button type="submit">Submit</button>
				</div>
			</form:form>
		</div>
	</div>

</body>
</html>