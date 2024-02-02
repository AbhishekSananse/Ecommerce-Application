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
<title></title>
</head>
<body>
<jsp:useBean id="cpdata" class="com.bean.admin.Add_city_pin" scope="session">
<jsp:setProperty name="cpdata" param="city" property="city"/>
<jsp:setProperty name="cpdata" param="pin" property="pin"/>
</jsp:useBean>
<jsp:forward page="/ds?type=5"/>

</body>
</html>