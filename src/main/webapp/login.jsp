<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background: #f2f2f2;
    }
    .container {
        width: 400px;
        margin: 80px auto;
        background: white;
        padding: 25px;
        border-radius: 10px;
        box-shadow: 0 0 10px gray;
    }
    h2 {
        text-align: center;
    }
    input[type=text], input[type=password] {
        width: 100%;
        padding: 10px;
        margin: 8px 0;
        box-sizing: border-box;
    }
    input[type=submit] {
        width: 100%;
        padding: 10px;
        background: #4CAF50;
        color: white;
        border: none;
        cursor: pointer;
    }
    .error {
        text-align: center;
        color: red;
    }
    .success {
        text-align: center;
        color: green;
    }
    p {
        text-align: center;
    }
</style>
</head>
<body>

<div class="container">
    <h2>Login Form</h2>

    <%
        String msg = request.getParameter("msg");
        String error = request.getParameter("error");
        if ("registered".equals(msg)) {
    %>
        <p class="success">Registration successful. Please login.</p>
    <%
        }
        if ("1".equals(error)) {
    %>
        <p class="error">Invalid username or password.</p>
    <%
        }
    %>

    <form action="LoginServlet" method="post">
        <label>Username:</label>
        <input type="text" name="username" required>

        <label>Password:</label>
        <input type="password" name="password" required>

        <input type="submit" value="Login">
    </form>

    <p>New user? <a href="register.jsp">Register here</a></p>
</div>

</body>
</html>