<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #667eea, #764ba2);
            margin: 0;
            padding: 0;
        }

        .container {
            width: 400px;
            margin: 80px auto;
            background: #fff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 0 20px rgba(0,0,0,0.2);
            text-align: center;
        }

        h2 {
            color: #333;
            margin-bottom: 15px;
        }

        p {
            font-size: 16px;
            color: #555;
            margin: 10px 0;
        }

        .highlight {
            font-weight: bold;
            color: #667eea;
        }

        .logout-btn {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background: #ff5e62;
            color: white;
            text-decoration: none;
            border-radius: 6px;
            transition: 0.3s;
        }

        .logout-btn:hover {
            background: #e04848;
        }
    </style>
</head>

<body>

<%
    String name = (String) session.getAttribute("name");
    if (name == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>

<div class="container">

    <h2>Welcome, <span class="highlight"><%= name %></span>!</h2>

    <p>Email: <span class="highlight"><%= session.getAttribute("email") %></span></p>

    <p>You are successfully logged in 🎉</p>

    <a href="LogoutServlet" class="logout-btn">Logout</a>

</div>

</body>
</html>