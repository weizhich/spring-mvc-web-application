<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Todo Page</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
	<H1>Add to do </H1>
	<form:form method="post" commandName="todo">
		<form:hidden path="id"/>
		<fieldset class="form-group">
			<form:label path="description">Description</form:label>
			<form:input path="description" type="text" class="form-control" required="required"/>
			<form:errors path="description" cssClass="text-warning"/>
		</fieldset>
		
		<fieldset class="form-group">
			<form:label path="targetDate">Target Date</form:label>
			<form:input path="targetDate" type="text" class="form-control" required="required"/>
			<form:errors path="targetDate" cssClass="text-warning"/>
		</fieldset>
		
		<input type="submit" value="Submit" class="btn btn-success"/>
	</form:form>
</div>

<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>