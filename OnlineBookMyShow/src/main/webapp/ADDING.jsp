<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Customer Table</title>
    <style>
    
    body{
    background-color:#e8f0fe;
    }
    .success{
    margin:0 auto;
    height:100px;
    width:100%;
    background-color:green;
    color:black;
    margin-top:200px;
    b
    }
    .h1{
     margin-top:10%;
    margin-left:30%;
    }
    
    .next{
    padding:5px 40px;
    border: 1px solid rgb(219, 219, 219);
    outline: none;
    color: rgb(40, 116, 240 );
    font-weight: 500px;
    border-radius: 2px;
    height: 32px;
    cursor: pointer;
    font-size: 16px;
    font-family: Arial, Helvetica, sans-serif;
    box-shadow: -1px -1px 10px rgb(54, 54, 54),
    1px 1px 10px rgb(54, 54, 54);
    letter-spacing: .1px;
    margin-left:40%;

    }
    </style>
   </head>
<body>
<div class="success">
<div class="h1"><h1>ADDING _SUCCESSFULLY..</h1></div>
 <button class="next"><a href="ADMIN.jsp">next </a></button>
</div>

<%
// Retrieve form parameters
String title = request.getParameter("title");
String genre = request.getParameter("genre");
String durationStr = request.getParameter("duration");
String director = request.getParameter("director");

// Validate and sanitize input
title = (title != null) ? title.trim() : "";
genre = (genre != null) ? genre.trim() : "";
durationStr = (durationStr != null) ? durationStr.trim() : "0";
director = (director != null) ? director.trim() : "";

// Convert durationStr to integer or store it as a string based on your requirement
int duration = 0;
try {
    duration = Integer.parseInt(durationStr);
} catch (NumberFormatException e) {
    // Handle the exception, e.g., set a default value or show an error message
    e.printStackTrace();
}

// Database connection parameters
Class.forName("com.mysql.cj.jdbc.Driver");
String url = "jdbc:mysql://localhost:3306/movies_info";
String uname = "root";
String pass = "root";

// SQL query
String sql = "INSERT INTO movie (title, genre, duration, director) VALUES (?, ?, ?, ?)";

try (
    // Establish database connection using try-with-resources
    Connection con = DriverManager.getConnection(url, uname, pass);
    // Create a prepared statement for SQL query
    PreparedStatement stmt = con.prepareStatement(sql)
) {
    // Set values for prepared statement
    stmt.setString(1, title);
    stmt.setString(2, genre);
    stmt.setInt(3, duration);
    stmt.setString(4, director);

    // Execute the update
    stmt.executeUpdate();
} catch (SQLException e) {
    e.printStackTrace();
    // Handle the SQL exception, log it, or show an error message
}
%>
</body>
</html>
