package com.blood.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.*;
import java.sql.*;
import java.security.MessageDigest;
import java.nio.charset.StandardCharsets;
import java.util.Base64;

public class RegisterServlet extends HttpServlet {

    private static final String DB_URL = "jdbc:mysql://localhost:3306/blood_donation";
    private static final String DB_USER = "root";
    private static final String DB_PASS = "admin";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String bloodGroup = request.getParameter("blood_group");
        String city = request.getParameter("city");
        String contact = request.getParameter("contact");
        String lastDonated = request.getParameter("last_donated");

        // Encrypt password for security
        String encryptedPassword = encryptPassword(password);

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(DB_URL, DB_USER, DB_PASS);

            String sql = "INSERT INTO donors (name, email, password, blood_group, city, contact, last_donated) VALUES (?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, encryptedPassword);
            ps.setString(4, bloodGroup);
            ps.setString(5, city);
            ps.setString(6, contact);
            ps.setString(7, lastDonated);

            ps.executeUpdate();
            ps.close();
            con.close();

            // ✅ Show success message
            out.println("<html><body style='text-align:center; margin-top:100px;'>");
            out.println("<h2 style='color:green;'>🎉 Registration Successful!</h2>");
            out.println("<p><a href='login.jsp'>Click here to Login</a></p>");
            out.println("<p><a href='index.jsp'>Back to Home</a></p>");
            out.println("</body></html>");

        } catch (Exception e) {
            out.println("<h3 style='color:red;'>Error: " + e.getMessage() + "</h3>");
            e.printStackTrace(out);
        }
    }

    private String encryptPassword(String password) {
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            byte[] hash = md.digest(password.getBytes(StandardCharsets.UTF_8));
            return Base64.getEncoder().encodeToString(hash);
        } catch (Exception e) {
            return password;
        }
    }
}
