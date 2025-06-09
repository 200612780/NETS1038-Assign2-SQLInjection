package com.va.week6.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import com.va.week6.model.Student;

public class StudentDao {

    public int registerStudent(Student student) throws ClassNotFoundException {

        String INSERT_USERS_SQL = "INSERT INTO Signup (userName, userEmail, pass, preferredName, fullName) VALUES (?, ?, ?, ?, ?)";
        int result = 0;
        Class.forName("com.mysql.cj.jdbc.Driver");

        try (Connection connection = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/Assign2_sehdevsingh", "root", "root")) {

            PreparedStatement ps = connection.prepareStatement(INSERT_USERS_SQL);
            ps.setString(1, student.getUsername());
            ps.setString(2, student.getEmail());
            ps.setString(3, student.getPassword());
            ps.setString(4, student.getPreferredName());
            ps.setString(5, student.getFullName());
            System.out.println("Executing SQL: " + ps.toString());

            result = ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return result;
    }
}