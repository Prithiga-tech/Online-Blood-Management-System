package com.blood.dao;

import com.blood.model.User;
import com.blood.util.DBConnection;
import java.sql.*;

public class UserDAO {
    public int saveUser(User u) {
        int generatedId = -1;
        try {
            Connection conn = DBConnection.getConnection();
            String sql = "INSERT INTO users(name,email,password,role) VALUES (?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            ps.setString(1, u.getName());
            ps.setString(2, u.getEmail());
            ps.setString(3, u.getPassword());
            ps.setString(4, u.getRole());
            ps.executeUpdate();
            ResultSet rs = ps.getGeneratedKeys();
            if (rs.next()) generatedId = rs.getInt(1);
            rs.close(); ps.close();
        } catch (Exception e) { e.printStackTrace(); }
        return generatedId;
    }

    public User getUserByEmailAndPassword(String email, String password) {
        User u = null;
        try {
            Connection conn = DBConnection.getConnection();
            String sql = "SELECT * FROM users WHERE email=? AND password=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1,email);
            ps.setString(2,password);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                u = new User();
                u.setId(rs.getInt("id"));
                u.setName(rs.getString("name"));
                u.setEmail(rs.getString("email"));
                u.setPassword(rs.getString("password"));
                u.setRole(rs.getString("role"));
            }
            rs.close(); ps.close();
        } catch (Exception e) { e.printStackTrace(); }
        return u;
    }
}
