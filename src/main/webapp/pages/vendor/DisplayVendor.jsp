<%@ page language="java" import="java.sql.*,com.mysql.cj.jdbc.MysqlDataSource" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>
<head>
    <base href="<%= basePath%>">
    <meta charset="UTF-8">
    <title>Display Vendor Details</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        .container {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 30px;
            width: 300px;
            text-align: center;
        }

        label {
            display: block;
            margin-bottom: 15px;
            font-weight: bold;
            color: #333;
        }

        .details {
            margin-bottom: 20px;
        }

        /* Optional: Style for handling the case when the attribute is not available */
        .error-message {
            color: red;
            font-weight: bold;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <div class="container">
        <% 
            String vendorId = (String) session.getAttribute("vendorId");
            String vendorName = (String) session.getAttribute("vendorName");
            String item = (String) session.getAttribute("item");
            String city = (String) session.getAttribute("city");
            session.removeAttribute("vendorId");
            session.removeAttribute("vendorName"); 
            session.removeAttribute("item");
            session.removeAttribute("city"); 

            if (vendorName != null) {
        %>
            <div class="details">
                <label>ID : <%= vendorId %></label>
            </div>
            <div class="details">
                <label>Name : <%= vendorName %></label>
            </div>
            <div class="details">
                <label>Item : <%= item %></label>
            </div>
            <div class="details">
                <label>City : <%= city %></label>
            </div>
        <% 
            } else {
                // Handle the case when the attribute is not available
        }
        %>
    </div>
</body>
</html>
