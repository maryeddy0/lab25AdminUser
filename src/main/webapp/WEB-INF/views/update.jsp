<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update</title>
<link
	href="https://stackpath.bootstrapcdn.com/bootswatch/4.3.1/flatly/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T5jhQKMh96HMkXwqVMSjF3CmLcL1nT9//tCqu9By5XSdj7CwR0r+F3LTzUdfkkQf"
	crossorigin="anonymous">
</head>
<body style="padding: 3em;">
	<h1>Update Item</h1>
	<form name="update-item" id="user" action="/update-item" onsubmit="return validateForm() ">
		ID: ${id} <input type="hidden" name="id" value="${id}">
		Name:<input type="text" name="name">
		Description:<input type="text" name="description" >
		Quantity:<input type="text" name="quantity" >
		Price:<input type="text" name="price" ><br>
				<input type="submit" name ="update" value="Update">
			
		</form>
	<script src="script.js"></script>
</body>
</html>