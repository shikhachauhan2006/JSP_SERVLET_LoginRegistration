package com.app;

import java.io.*;

import java.sql.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/LoginServlet")

public class LoginServlet extends HttpServlet {
	

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email    = request.getParameter("email");
        String password = request.getParameter("password");

        try {
            Connection con = DBConnection.getConnection();
            String sql = "SELECT * FROM users WHERE email=? AND password=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, email);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                HttpSession session = request.getSession();
                session.setAttribute("name", rs.getString("name"));
                session.setAttribute("email", rs.getString("email"));
                con.close();
                response.sendRedirect("welcome.jsp");
            } else {
                con.close();
                response.sendRedirect("login.jsp?msg=Invalid+Email+or+Password");
            }

        } catch (Exception e) {
            response.sendRedirect("login.jsp?msg=Error:+" + e.getMessage());
        }
    }
}
