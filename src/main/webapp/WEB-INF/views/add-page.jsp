<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add-page</title>
<link
	href="https://stackpath.bootstrapcdn.com/bootswatch/4.3.1/flatly/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T5jhQKMh96HMkXwqVMSjF3CmLcL1nT9//tCqu9By5XSdj7CwR0r+F3LTzUdfkkQf"
	crossorigin="anonymous">
</head>
	<h1>Add-page</h1>
<body style="padding: 3em;">
	<form name="add-item" action="/add" onsubmit="return validateAdd() ">
		<input type="hidden" name="addNew"> 
		Name:<input type="text" name="name">
		Description:<input type="text" name="description">
		Quantity:<input type="text" name="quantity">
		Price:<input type="text" name="price"><br>
		<input type="submit" value="Add a new Item">
	
	</form>
<script src="script.js"></script>
</body>
</html>