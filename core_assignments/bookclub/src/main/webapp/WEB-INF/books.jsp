<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" type="text/css" href="/css/books.css">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Read Share</title>
</head>
<body>
	<div class="container">
		<div class="d-flex justify-content-between mb-3">
			<div>
				<h1>Welcome, <c:out value="${user.name}"/></h1>
				<p>Books from everyone's shelves:</p>
			</div>
			<div class="d-flex flex-column justify-content-evenly">
				<a href="/logout">Logout</a>
				<a href="/books/new">+ Add a book to my shelf</a>
			</div>
		</div>
		<div>
			<table class="table">
				<thead>
					<tr>
						<th>ID</th>
						<th>Title</th>
						<th>Author Name</th>
						<th>Posted By</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach var="book" items="${books}">
					<tr>
						<td><c:out value="${book.id}"/></td>
						<td><a href="/books/${book.id}"><c:out value="${book.title}"/></a></td>
						<td><c:out value="${book.author}"/></td>
						<td><c:out value="${book.user.name}"/></td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

</body>
</html>