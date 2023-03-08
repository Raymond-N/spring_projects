<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" type="text/css" href="/css/showExpense.css">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show Expense</title>
</head>
<body>
	<div class="container w-50">
		<div class="mb-5 d-flex justify-content-evenly align-items-center">
			<h1>Expense Details</h1>
			<a href="/expenses">Go back</a>
		</div>
		<div>
			<div class="mb-3 d-flex justify-content-around align-items-center">
				<p>Expense Name:</p>
				<p><c:out value="${expense.name}"/></p>
			</div>
			<div class="mb-3 d-flex justify-content-around align-items-center">
				<p>Expense Description:</p>
				<p><c:out value="${expense.description}"/></p>
			</div>
			<div class="mb-3 d-flex justify-content-around align-items-center">
				<p>Vendor:</p>
				<p><c:out value="${expense.vendor}"/></p>
			</div>
			<div class="mb-3 d-flex justify-content-around align-items-center">
				<p>Amount Spent:</p>
				<p>$<c:out value="${expense.amount}"/></p>
			</div>
		</div>
	</div>

</body>
</html>