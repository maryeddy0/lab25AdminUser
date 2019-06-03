<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://stackpath.bootstrapcdn.com/bootswatch/4.3.1/flatly/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T5jhQKMh96HMkXwqVMSjF3CmLcL1nT9//tCqu9By5XSdj7CwR0r+F3LTzUdfkkQf"
	crossorigin="anonymous">

<meta charset="UTF-8">
<title>Admin</title>
</head>
<body style="padding: 3em;">
	<h1>Admin View</h1>

	<form name="table">
		<div class="container" style="max-width:800px;">
			<table class="table" border="1">
				<thead>
					<tr>
						<td>ID</td>
						<td>Name</td>
						<td>Description</td>
						<td>Quantity</td>
						<td>Price</td>
						<td>Update</td>
						<td>Delete</td>
					</tr>
				</thead>
				<tbody>
					<datalist id="list">
						<c:forEach items="${allStuff}" var="item">
							<tr>
								<td>${item.id}</td>
								<td>${item.name}</td>
								<td>${item.description}</td>
								<td>${item.quantity}</td>
								<td>${item.price}</td>
								<td><a href="/update-form?id=${item.id}">Update</a></td>
								<td><a href="/delete?id=${item.id}" onclick="return validateDelete().submit();">Delete</a></td>
								
							</tr>
						</c:forEach>
					</datalist>
				</tbody>
			</table>
		</div>
	</form>

	<a href="/addLink?addNew=add">Add Item</a>

<script src="script.js"></script>
</body>
</html>