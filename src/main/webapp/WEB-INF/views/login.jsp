<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Google!</title>
</head>
<body>
	<p>
		<font color="red">${errorMessage}</font>
	</p>
	<form action="/login" method="post">
		Name: <input type="text" name="name"/><br/>
		Password: <input type="password" name="password"><br/>
	<input type="submit" value="Login"/>
</form>
</body>
</html>