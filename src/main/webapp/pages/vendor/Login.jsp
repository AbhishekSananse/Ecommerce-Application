<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    %>
<!DOCTYPE html>
<html>
<head>
<base href="<%= basePath%>">
<meta charset="UTF-8">
<title>Vendor Login</title>
</head>
<body bgcolor="black" text="whitesmoke">
	<h1 style="text-align:center"> Vendor Login </h1>
	<br/><br/><br/>
	<form action="./pages/vendor/logincheck.jsp">
	<label style="margin-left: 21vw;margin-right: 12px;"> User Id : </label>
	<input type="text" name="id" placeholder=" Enter your User Id " style="border: 2px solid forestgreen;border-radius: 9px;text-align: center;padding: 5px 37px;background-color:#b6f45a;"/>
	<label style="margin-left: 14vw;margin-right: 12px;"> Password : </label>
	<input type="password" name="password" placeholder=" Enter your Password " style="border: 2px solid forestgreen;border-radius: 9px;text-align: center;padding: 5px 37px;background-color:#b6f45a;"/>
	<br/><br/><br/>
	<input type="submit" value=" Submit " style="margin-left: 46vw;padding: 9px 25px;border: 2px solid forestgreen;background: #b6f45a;border-radius: 28px;cursor:pointer"/>
	</form>
</body>
</html>