package com.Education.VOTER;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@Controller
public class VoterServlet{
    @RequestMapping(value = "/givevote", method = RequestMethod.POST)
    public String doPost(HttpServletRequest request, HttpServletResponse response, @RequestParam("candidateId") String candidateId){

        System.out.print(candidateId);
        String url = "jdbc:mysql://localhost:3306/meta?characterEncoding=utf-8";
        String username = "root";
        String password = "Akanksha@123";

        try (Connection conn = DriverManager.getConnection(url, username, password)) {
            // Update the vote count for the selected candidate
            String sql = "UPDATE voter SET count = count + 1 WHERE candidate = ?";
            try (PreparedStatement stmt = conn.prepareStatement(sql)) {
                stmt.setString(1, candidateId);
                stmt.executeUpdate();
            }
        } catch (SQLException ex) {
            // Handle database connection errors
            ex.printStackTrace();
//            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Database error");
        }
        return "success.jsp";
    }
}
