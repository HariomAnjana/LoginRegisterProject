<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Page</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background: #f2f2f2;
    }
    .container {
        width: 400px;
        margin: 60px auto;
        background: white;
        padding: 25px;
        border-radius: 10px;
        box-shadow: 0 0 10px gray;
    }
    h2 {
        text-align: center;
    }
    input[type=text], input[type=email], input[type=password] {
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
    p {
        text-align: center;
    }
</style>
</head>
<body>

<div class="container">
    <h2>Registration Form</h2>
    <form action="RegisterServlet" method="post">
        <label>Name:</label>
        <input type="text" name="name" required>

        <label>Email:</label>
        <input type="email" name="email" required>

        <label>Username:</label>
        <input type="text" name="username" required>

        <label>Password:</label>
        <input type="password" name="password" required>

        <input type="submit" value="Register">
    </form>

    <p>Already have an account? <a href="login.jsp">Login here</a></p>
</div>

</body>
</html>