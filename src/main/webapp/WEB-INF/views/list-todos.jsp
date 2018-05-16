<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Todo List</title>
</head>
<body>
Hi ${name}<br/>
<table>
	<caption>Your Todos Are</caption>
	<thead>
		<tr>
			<th>Id</th>
			<th>Description</th>
			<th>Target Date</th>
			<th>Is Completed</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${todos}" var="todo">
			<tr>
				<td>${todo.id}</td>
				<td>${todo.description}</td>
				<td>${todo.targetDate}</td>
				<td>${todo.isDone}</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
<a class="button" href="/add-todo">Add</a>	
</body>
</html>