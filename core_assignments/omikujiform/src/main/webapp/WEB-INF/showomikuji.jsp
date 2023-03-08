<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="/css/style.css">
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Omikuji</title>
</head>
<body>
	<div class="container w-50">
		<h1 class="mb-4 text-center">Here's Your Omikuji!</h1>
		<div class="message border border-2 border-dark">
			<p>In <c:out value="${num}"/> years, you will live in <c:out value="${location}"/> with <c:out value="${human}"/> as your roommate, <c:out value="${endeavor}"/> for a living. The next time you see a <c:out value="${living}"/>, you will have good luck. Also, <c:out value="${message}"/>.</p>
		</div>
		<div class="anchor mt-3">
			<a href="/omikuji">Go Back</a>
		</div>
	</div>

</body>
</html>