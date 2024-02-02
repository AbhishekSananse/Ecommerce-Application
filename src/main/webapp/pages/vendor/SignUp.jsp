<%@ page language="java" import="java.sql.*,com.mysql.cj.jdbc.MysqlDataSource" contentType="text/html; charset=UTF-8"
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
<title>Vendor SignUp</title>
<style>/* styles.css */

body {
    background-color: black;
    color: whitesmoke;
    font-family: Arial, sans-serif;
}

h1 {
    text-align: center;
}

form {
    max-width: 500px;
    margin: 0 auto;
}

label {
    display: block;
    margin-top: 10px;
}

input, select {
    width: 100%;
    padding: 8px;
    margin-bottom: 10px;
    box-sizing: border-box;
}

select {
    width: 100%;
    padding: 8px;
    margin-bottom: 10px;
    box-sizing: border-box;
}

input[type="submit"] {
    background-color: #4CAF50;
    color: white;
    padding: 10px 15px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

input[type="submit"]:hover {
    background-color: #45a049;
}
</style>
</head>
<body bgcolor="black" text="whitesmoke">
	<h1 style="text-align:center"> Vendor SignUp </h1>
	<br/>
<%
Connection conn;
PreparedStatement prp;
ResultSet rs;
String qry1 ="select * from products";
String qry2 ="select * from address";
MysqlDataSource ds = new MysqlDataSource();
ds.setUser("root");
ds.setPassword("root");
ds.setDatabaseName("miniapp");
ds.setServerName("localhost");
ds.setPortNumber(3306);
try {
conn =ds.getConnection();
prp = conn.prepareStatement(qry1);
rs = prp.executeQuery();
%>	
	<form action="./pages/vendor/add_vendor_data.jsp">
	<label> Name : </label>
	<input type="text" name="vendorname" placeholder=" Enter Your Name "/>
	<label> Mobile : </label>
	<input type="text" name="vendormbno" placeholder=" Enter Your Mobile Number "/>
	<label> Password : </label>
	<input type="password" name="venderpwd" placeholder=" Enter your Password "/>
	<label> Item :</label>
	<select name="item">
<% while(rs.next()){
%>
	<option><%= rs.getString(2) %></option>>	 
<%}//end of while loop
  }//end of try block
catch(Exception e){
	e.getStackTrace();
}%>
	</select>
	<label> Price : </label>
	<input type="text" name="itemprice" placeholder=" Enter the Item Price "/>
	<label> Address : </label>
<% try {
conn =ds.getConnection();
prp = conn.prepareStatement(qry2);
rs = prp.executeQuery();
%><select name="city">
<%
while(rs.next()){
%>
	<option><%= rs.getString(1) %></option>
<% }//end of while loop
  }//end of try block
catch(Exception e){
	e.getStackTrace();
}%>	
</select>
<select name="pincode">
<% try {
conn =ds.getConnection();
prp = conn.prepareStatement(qry2);
rs = prp.executeQuery();
while(rs.next()){
%>
	<option><%= rs.getString(2) %></option>
<% }//end of while loop
  }//end of try block
catch(Exception e){
	e.getStackTrace();
}%>
	</select>
	<br/><br/>
	<input type="submit" value=" Submit " />
	</form>
</body>
</html>