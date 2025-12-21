package com.blood.dao;

import com.blood.model.Donor;
import com.blood.util.DBConnection;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DonorDAO {
    public boolean saveDonor(Donor d) {
        try {
            Connection conn = DBConnection.getConnection();
            String sql = "INSERT INTO donors(user_id,blood_group,city,contact,last_donated) VALUES (?,?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, d.getUserId());
            ps.setString(2, d.getBloodGroup());
            ps.setString(3, d.getCity());
            ps.setString(4, d.getContact());
            ps.setDate(5, d.getLastDonated());
            ps.executeUpdate();
            ps.close();
            return true;
        } catch (Exception e) {
            e.printStackTrace(); return false;
        }
    }

    public List<Donor> findByBloodGroupAndCity(String bg, String city) {
        List<Donor> list = new ArrayList<>();
        try {
            Connection conn = DBConnection.getConnection();
            String sql = "SELECT d.*, u.name FROM donors d JOIN users u ON d.user_id=u.id WHERE d.blood_group=? AND d.city=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1,bg); ps.setString(2,city);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Donor d = new Donor();
                d.setId(rs.getInt("id"));
                d.setUserId(rs.getInt("user_id"));
                d.setBloodGroup(rs.getString("blood_group"));
                d.setCity(rs.getString("city"));
                d.setContact(rs.getString("contact"));
                d.setLastDonated(rs.getDate("last_donated"));
                list.add(d);
            }
            rs.close(); ps.close();
        } catch (Exception e) { e.printStackTrace(); }
        return list;
    }
}
