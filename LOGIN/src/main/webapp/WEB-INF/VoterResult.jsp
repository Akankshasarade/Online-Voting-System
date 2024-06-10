<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Result</title>
</head>
<body>
<style>
   h1{ text-align: center;
    text-align: center; 
     padding: 15px;}
body {
    font-family: Arial, sans-serif;
    background-color: #f0f0f0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
}

table {
    width: 40%;
    border-collapse: collapse;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    border-radius: 8px;
    overflow: hidden;
}

thead th {
    background-color: #007f3f;
    color: #fff;
    font-weight: bold;
    padding: 10px;
    text-align: left;
}

tbody td {
    padding: 10px;
}

tbody tr:nth-child(even) {
    background-color: #f2f2f2;
}

tbody tr:hover {
    background-color: #d9ead3;
}

tfoot th {
    background-color: #007f3f;
    color: #fff;
    font-weight: bold;
    padding: 10px;
    text-align: left;
}

.box {
    background-color: #4CAF50;
    color: white;
    text-align: center;
    padding: 20px;
    margin-top: 20px;
    border-radius: 8px;
}

/* New CSS to highlight first rank winner */
tbody tr:first-child {
    font-weight: bold;
    color: red;
}
</style>
<h1>Election Result</h1>
<table>
    <thead>
    
    <tr>
        <th>Rank</th>
        <th>Candidate</th>
        <th>Total Votes</th>
    </tr>
    </thead>
    <tbody>
    <%
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/meta?characterEncoding=utf-8";
            String username = "root";
            String password = "Akanksha@123";

            try (Connection conn = DriverManager.getConnection(url, username, password)) {
                String sql = "SELECT candidate, count FROM voter ORDER BY count DESC";
                try (PreparedStatement stmt = conn.prepareStatement(sql)) {
                    ResultSet rst = stmt.executeQuery();
                    int rankk = 1;
                    while (rst.next()) {
                        String candidate = rst.getString("candidate");
                        int votes = rst.getInt("count");
    %>
    <tr>
        <td><%= rankk %></td>
        <td><%= candidate %></td>
        <td><%= votes %></td>
    </tr>
    <%
                        rankk++;
                    }
                }
            }
        } catch (ClassNotFoundException | SQLException ex) {
            ex.printStackTrace();
        }
    %>
    </tbody>
</table>
</body>
</html>
