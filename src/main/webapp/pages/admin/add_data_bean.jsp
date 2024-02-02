<%@ page language="java"  contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<jsp:useBean id="addata" class="com.bean.admin.add_details" scope="session">
<jsp:setProperty name="addata" param="item" property="item"/>
</jsp:useBean>
<jsp:forward page="/ds?type=4"/>
<!-- forwarding the bean injected with data to the service layer -->

</body>
</html>