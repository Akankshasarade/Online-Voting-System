
package com.Education.register;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseUtil {

    private static final String URL = "jdbc:mysql://localhost:3306/register";
    private static final String USER = "root";
    private static final String PASSWORD = "Akanksha@123";

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }

	public static Connection getConnection1() {
		// TODO Auto-generated method stub
		return null;
	}
}











