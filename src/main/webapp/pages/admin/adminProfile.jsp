<%@ page language="java" import="java.sql.*,com.mysql.cj.jdbc.MysqlDataSource" contentType="text/html; charset=UTF-8"
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
<title>Admin Profile</title>
<style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            color: #333;
        }

        header {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 1rem;
        }

        h1 {
            margin-bottom: 0.5rem;
        }

        form {
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            margin: 10px;
            padding: 20px;
            max-width: 400px;
            margin: 0 auto;
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
        }

        input {
            width: 100%;
            padding: 8px;
            margin-bottom: 16px;
            box-sizing: border-box;
            border: 1px solid #ddd;
            border-radius: 4px;
        }

        button {
            background-color: #4caf50;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        button:hover {
            background-color: #45a049;
        }

        a {
            text-decoration: none;
            color: #3498db;
        }

        a:hover {
            text-decoration: underline;
        }

        section {
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            margin: 10px;
            padding: 20px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
        }

        a {
            margin-right: 10px;
            color: #3498db;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body >
	<h1 style="text-align:center">Admin Profile</h1>
	<form action="./pages/admin/add_data_bean.jsp">
		<label>Add Item : </label> 
		<input type="text" name="item"placeholder=" Add Item Here " /> 
		<br /> 
		<input type="submit" value=" Submit " />
	</form>
	<form action="./pages/admin/add_city_pin_bean.jsp">
		<label>Add City : </label> 
		<input type="text" name="city" placeholder=" Add City Here " /> 
		<br /> 
		<label>Add Pincode : </label> 
		<input type="text" name="pin" placeholder=" Add Pincode Here " /> 
		<input type="submit" value=" Submit " />
		<br /> 
	</form>
	<form action="">
<%
Connection conn;
PreparedStatement prp;
ResultSet rs;
String qry ="select * from products";
MysqlDataSource ds = new MysqlDataSource();
ds.setUser("root");
ds.setPassword("root");
ds.setDatabaseName("miniapp");
ds.setServerName("localhost");
ds.setPortNumber(3306);
try {
conn =ds.getConnection();
prp = conn.prepareStatement(qry);
rs = prp.executeQuery();
while(rs.next()){
%>
	<label><%= rs.getString(2) %></label>
	 <a href="./pages/admin/edit.jsp?id=<%= rs.getString(1) %>&item=<%= rs.getString(2)%>">Edit</a>
      <a href="./ds?type=8&id=<%= rs.getString(1) %>">Delete</a>


<%}//end of while loop
  }//end of try block
catch(Exception e){
	e.getStackTrace();
}%>
</form>
</body>
</html>