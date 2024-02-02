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
<title>E-commerce Application</title>
 <style>
        body {
            background-color: black;
            color: silver;
            font-family: 'Arial', sans-serif;
            text-align: center;
            margin: 40px;
        }

        h1, h2 {
            color: #61dafb;
        }

        form {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            background-color: #555;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
        }

        a {
            padding: 10px;
            margin: 10px;
            text-decoration: none;
            color: khaki;
            display: inline-block;
            background-color: #43e897;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        a:hover {
            background-color: #4fa3d1;
        }
    </style>
</head>
<body bgcolor="black" text="silver">
<h1>E-commerce Application</h1>
<br/>
<form action="fc">
<h2 style="text-align:center">Admin</h2>
<br/><br/>
<a href="fc?type=0"> Login </a>
<br/><br/><br/><br/>
<h2>Vendor</h2>
<br/><br/>
<a href="fc?type=1">  Vendor Signup  </a>
<a href="fc?type=2">  Vendor Login  </a>
</form>
</body>
</html>