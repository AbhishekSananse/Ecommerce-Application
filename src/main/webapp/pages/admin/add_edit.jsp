<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
   String path = request.getContextPath();
   String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>
<head>
   <base href="<%= basePath%>">
   <meta charset="UTF-8">
   <title>Your Title Here</title>
</head>
<body>
   <% if(request.getParameter("id") != null) {
         String id = request.getParameter("id");
   %>
   <jsp:useBean id="eddata" class="com.bean.admin.edit_details" scope="session"/>
   <jsp:setProperty name="eddata" property="item" param="item"/>

   <%-- Assuming "item" is a property in your add_details bean --%>

   <jsp:forward page="/ds?type=7&id=<%= id %>"/>
   <% } %>
</body>
</html>
