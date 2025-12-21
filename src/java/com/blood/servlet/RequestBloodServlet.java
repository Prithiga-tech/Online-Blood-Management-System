package com.blood.servlet;

import com.blood.util.DBConnection;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

public class RequestBloodServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String requester = request.getParameter("requester_name");
        String bg = request.getParameter("blood_group");
        String city = request.getParameter("city");
        String contact = request.getParameter("contact");

        try {
            Connection conn = DBConnection.getConnection();
            String sql = "INSERT INTO requests(requester_name,blood_group,city,contact) VALUES (?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, requester);
            ps.setString(2, bg);
            ps.setString(3, city);
            ps.setString(4, contact);
            ps.executeUpdate();
            ps.close();
            // optionally implement donor notification later
        } catch (Exception e) {
            e.printStackTrace();
        }
        response.sendRedirect("index.jsp?msg=Request+submitted");
    }
}
