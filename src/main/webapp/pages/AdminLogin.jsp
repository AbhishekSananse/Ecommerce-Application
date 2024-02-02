<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta charset="UTF-8">
<title>Admin</title>
<style>
body {
	background-color: black;
	color: whitesmoke;
	font-family: 'Arial', sans-serif;
	text-align: center;
	margin: 40px;
}

h1 {
	text-align: center;
	color: #61dafb;
}

form {
	max-width: 400px;
	margin: 0 auto;
	padding: 20px;
	background-color: #555;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
}

label {
	margin-left: 16px;
	margin-right: 12px;
	display: block;
	margin-top: 10px;
	color: #b6f45a;
}

input {
	width: 100%;
	padding: 8px;
	margin: 5px 0;
	box-sizing: border-box;
	border: 2px solid forestgreen;
	border-radius: 9px;
	text-align: center;
	background-color: #b6f45a;
}

input[type="submit"] {
	padding: 9px 25px;
	border: 2px solid forestgreen;
	background: #b6f45a;
	border-radius: 28px;
	cursor: pointer;
	color: black;
}

div.error-message {
	color: red;
	text-align: center;
	font-size: 16px;
	margin-top: 10px;
}
</style>
</head>
<body bgcolor="black" text="whitesmoke">

	<h1>Admin Login</h1>
	<form action="AdminAuth">
		<label> Enter Admin UserID : </label> <input type="text"
			name="AdminUserId" Placeholder=" Enter User Id " /> <label>
			Enter Admin Password : </label> <input type="password" name="Adminpwd"
			Placeholder=" Enter Password " />
		<%
		if (request.getParameter("type").equals("3")) {
		%>
		<div class=error-message>Sorry, Wrong Credentials</div>
		<%
		}
		%>
		<input type="submit" value="Submit" />
	</form>
</body>
</html>