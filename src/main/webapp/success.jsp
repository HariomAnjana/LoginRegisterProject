<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Success Page</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background: #e8f5e9;
        text-align: center;
        margin-top: 100px;
    }
    .box {
        display: inline-block;
        background: white;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 0 10px gray;
    }
</style>
</head>
<body>

<div class="box">
    <h2>Login Successful</h2>
    <p>Welcome, <%= request.getAttribute("username") %></p>
</div>

</body>
</html>