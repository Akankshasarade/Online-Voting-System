<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.Education.LOGIN.MODEL.User" %>
<%@ page import="org.springframework.beans.factory.annotation.Autowired" %>
<%@ page import="com.Education.LOGIN.MODEL.UserService" %>
<%@ page import="org.springframework.context.ApplicationContext" %>
<%@ page import="org.springframework.web.context.support.WebApplicationContextUtils" %>
<%@ page import="javax.servlet.ServletContext" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<%
    ServletContext servletContext = request.getServletContext();
    ApplicationContext applicationContext = WebApplicationContextUtils.getWebApplicationContext(servletContext);
    UserService userService = applicationContext.getBean(UserService.class);

    HttpSession userSession = request.getSession();
    User loggedInUser = (User) userSession.getAttribute("loggedInUser");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile</title>
    <!-- Add your CSS styles or links to external stylesheets here -->
</head>
<body>
 <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }

        div {
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            color: #333;
        }

        p {
            color: #666;
        }

        a {
            color: #007BFF;
            text-decoration: none;
            font-weight: bold;
            margin-top: 10px;
            display: inline-block;
        }

        a:hover {
            color: #0056b3;
        }
    </style>

    <div>
        <h1>User Profile</h1>
        
        <% 
            if (loggedInUser != null) {
        %>
            <p>Welcome, <%= loggedInUser.getName() %>!</p>
            <p>ID: <%= loggedInUser.getId() %></p>
            <!-- Add more user details as needed -->
            <a href="/logout">Logout</a>
        <%
            } else {
        %>
            <p>User not logged in.</p>
            <a href="/">Login</a>
        <%
            }
        %>

    </div>

</body>
</html>
