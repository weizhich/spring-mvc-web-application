<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Todo List</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
	<table class="table table-striped">
		<caption>Your Todos Are</caption>
		<thead>
			<tr>
				<th>Id</th>
				<th>Description</th>
				<th>Target Date</th>
				<th>Is Completed</th>
				<th></th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${todos}" var="todo">
				<tr>
					<td>${todo.id}</td>
					<td>${todo.description}</td>
					<td><fmt:formatDate pattern="MM/dd/yyyy" value="${todo.targetDate}"/></td>
					<td>${todo.isDone}</td>
					<td><a href="/update-todo?id=${todo.id}" class="btn btn-success">Update</a></td>
					<td><a href="/delete-todo?id=${todo.id}" class="btn btn-danger">Delete</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<div>
		<a class="btn btn-success" href="/add-todo">Add</a>
	</div>	
</div>

<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>