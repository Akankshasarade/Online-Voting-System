
package com.Education.LOGIN.MODEL;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login")

public class LoginServlet extends HttpServlet {
	 private UserService userService = new UserService();
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Your login validation logic here
    	 String name = request.getParameter("name");
         String password = request.getParameter("password");
        boolean loginSuccessful = userService.authenticate(name, password);/* check if login is successful */;

        if (loginSuccessful) {
            // Set a session attribute to indicate the user is logged in
            request.getSession().setAttribute("loggedIn", true);

            // Redirect to the dashboard page
            response.sendRedirect(request.getContextPath() + "/dash");
        } else {
            // Handle unsuccessful login
            request.setAttribute("error", "Invalid credentials");
            request.getRequestDispatcher("/login.jsp").forward(request, response);
        }
    }
}
