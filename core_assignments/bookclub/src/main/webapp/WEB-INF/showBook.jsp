<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" type="text/css" href="/css/showBook.css">
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
		<div class="d-flex justify-content-between align-items-center mb-3">
			<h1><c:out value="${book.title}"/></h1>
			<a href="/books">Back to the shelves</a>
		</div>
		<div>
			<c:if test="${userId != book.user.id}">
			<h4 class="mb-4"><span style="color: CF2A27"><c:out value="${book.user.name}"/></span> read <span style="color: B03BFE"><c:out value="${book.title}"/></span> by <span style="color: 24AA30"><c:out value="${book.author}"/></span>.</h4>
			</c:if>
			<c:if test="${userId == book.user.id}">
			<h4 class="mb-4"><span style="color: CF2A27">You</span> read <span style="color: B03BFE"><c:out value="${book.title}"/></span> by <span style="color: 24AA30"><c:out value="${book.author}"/></span>.</h4>
			</c:if>
			<c:if test="${userId != book.user.id}">
			<p>Here are <c:out value="${book.user.name}"/>'s thoughts:</p>
			</c:if>
			<c:if test="${userId == book.user.id}">
			<p>Here are your thoughts:</p>
			</c:if>
			<div class="border-top border-bottom border-dark border-2 w-75">
				<p class="mt-4 mb-4"><c:out value="${book.thoughts}"/></p>
			</div>
			<div class="d-flex justify-content-end w-75 mt-4">
				<div class="w-25 mb-3 d-flex justify-content-evenly">
					<c:if test="${userId == book.user.id}">
					<a href="/books/${book.id}/edit"><button>Edit</button></a>
					<a href="/books/${book.id}/delete"><button>Delete</button></a>
					</c:if>
				</div>
			</div>
		</div>
	</div>
</body>
</html>