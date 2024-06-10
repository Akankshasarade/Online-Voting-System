package com.Education.LOGIN.MODEL;

import org.springframework.stereotype.Service;
import org.springframework.stereotype.Service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.stereotype.Service;
@Service
public class UserService {

    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/meta";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "Akanksha@123";

    public boolean authenticate(String name, String password) {
        String query = "SELECT password FROM users WHERE name = ?";

        try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/meta","root","Akanksha@123");
             PreparedStatement preparedStatement = connection.prepareStatement(query)) {

            preparedStatement.setString(1, name);

            try (ResultSet resultSet = preparedStatement.executeQuery()) {
                if (resultSet.next()) {
                    String storedPassword = resultSet.getString("password");
                    return storedPassword.equals(password);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace(); // Handle exceptions properly in a real application
        }

        return false;
    }
   

   

  

    
}
