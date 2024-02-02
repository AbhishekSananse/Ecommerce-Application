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
<jsp:useBean id="vddata" class="com.bean.vendor.VendorData" scope="session">
<jsp:setProperty name="vddata" param="vendorname" property="vendorname"/>
<jsp:setProperty name="vddata" param="vendormbno" property="vendormbno"/>
<jsp:setProperty name="vddata" param="venderpwd" property="venderpwd"/>
<jsp:setProperty name="vddata" param="item" property="item"/>
<jsp:setProperty name="vddata" param="itemprice" property="itemprice"/>
<jsp:setProperty name="vddata" param="city" property="city"/>
<jsp:setProperty name="vddata" param="pincode" property="pincode"/>
</jsp:useBean>
<jsp:forward page="/vs?type=9"/>
</body>
</html>