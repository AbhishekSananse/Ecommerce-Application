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
<title></title>
</head>
<body>
<%
Connection conn;
PreparedStatement prp;
ResultSet rs;
String qry ="select * from vendor";
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
%>	
<%
String id = request.getParameter("id");
String pwd = request.getParameter("password");
while(rs.next()){
	if(id.equals(rs.getString(1)) && pwd.equals(rs.getString(4))){
		 String vendorId = rs.getString(1); 
		 String vendorName = rs.getString(2);
		 String item = rs.getString(5);
		 String city = rs.getString(7);
		 session.setAttribute("vendorId", vendorId);
		 session.setAttribute("vendorName", vendorName);
		 session.setAttribute("item", item);
		 session.setAttribute("city", city);
		 
		response.sendRedirect("./DisplayVendor.jsp?");
	 }
	}
}catch(Exception e){
	e.getStackTrace();
}
%>
</body>
</html>