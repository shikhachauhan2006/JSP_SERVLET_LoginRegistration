<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Register</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #43e97b, #38f9d7);
            margin: 0;
            padding: 0;
        }

        .container {
            width: 360px;
            margin: 70px auto;
            background: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0,0,0,0.2);
            text-align: center;
        }

        h2 {
            margin-bottom: 20px;
        }

        input[type="text"],
        input[type="email"],
        input[type="password"] {
            width: 90%;
            padding: 10px;
            margin: 8px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        input[type="submit"] {
            width: 95%;
            padding: 10px;
            background: #43e97b;
            border: none;
            color: white;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background: #2ecc71;
        }

        .msg {
            color: red;
            margin-bottom: 10px;
        }

        a {
            text-decoration: none;
            color: #43e97b;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>

<body>

<div class="container">

    <h2>Create Account</h2>

    <%
        String msg = request.getParameter("msg");
        if (msg != null) {
    %>
        <p class="msg"><%= msg %></p>
    <%
        }
    %>

    <form action="RegisterServlet" method="post">

        <input type="text" name="name" placeholder="Enter Name" required />

        <input type="email" name="email" placeholder="Enter Email" required />

        <input type="password" name="password" placeholder="Enter Password" required />

        <input type="submit" value="Register" />

    </form>

    <br>
    <a href="login.jsp">Already have account? Login</a>

</div>

</body>
</html>