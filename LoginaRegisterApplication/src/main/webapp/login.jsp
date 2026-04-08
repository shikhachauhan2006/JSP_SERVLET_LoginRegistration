<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #4facfe, #00f2fe);
            margin: 0;
            padding: 0;
        }

        .container {
            width: 350px;
            margin: 80px auto;
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0,0,0,0.2);
            text-align: center;
        }

        h2 {
            margin-bottom: 20px;
        }

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
            background: #4facfe;
            border: none;
            color: white;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background: #00c6ff;
        }

        .msg {
            color: red;
            margin-bottom: 10px;
        }

        a {
            text-decoration: none;
            color: #4facfe;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>

<body>

<div class="container">

    <h2>Login</h2>

    <%
        String msg = request.getParameter("msg");
        if (msg != null) {
    %>
        <p class="msg"><%= msg %></p>
    <%
        }
    %>

    <form action="LoginServlet" method="post">

        <input type="email" name="email" placeholder="Enter Email" required />

        <input type="password" name="password" placeholder="Enter Password" required />

        <input type="submit" value="Login" />

    </form>

    <br>
    <a href="register.jsp">No account? Register</a>

</div>

</body>
</html>