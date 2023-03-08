<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Omikuji</title>
</head>
<body>
	<div class="container w-50">
		<h1 class="mb-4 text-center">Send an Omikuji!</h1>
		<form action="/send" method="post" class="border border-2 border-dark px-3">
			<div class="mb-3 mt-3">
  				<label for="years" class="form-label">Pick any number from 5 to 25</label>
  				<input type="number" class="form-control" name="years" id="years" min="5" max="25">
			</div>
			<div class="mb-3">
  				<label for="city" class="form-label">Enter the name of any city</label>
  				<input type="text" class="form-control" name="city" id="city">
			</div>
			<div class="mb-3">
  				<label for="person" class="form-label">Enter the name of any real person</label>
  				<input type="text" class="form-control" name="person" id="person">
			</div>
			<div class="mb-3">
  				<label for="hobby" class="form-label">Enter professional endeavor or hobby</label>
  				<input type="text" class="form-control" name="hobby" id="hobby">
			</div>
			<div class="mb-3">
  				<label for="thing" class="form-label">Enter any type of living thing</label>
  				<input type="text" class="form-control" name="thing" id="thing">
			</div>		
			<div class="mb-3">
  				<label for="nice" class="form-label">Say something nice to someone</label>
  				<textarea class="form-control" name="nice" id="nice" rows="3"></textarea>
			</div>
			<div class="mb-3">
				<p>Send and show a friend</p>
			</div>
			<div class="d-flex justify-content-end">
				<button type="submit" class="btn btn-primary mb-3">Send</button>
			</div>
		</form>
	</div>
</body>
</html>