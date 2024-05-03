<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Insert title here</title>
      <style>
        body {
            background-color: #e8f0fe;
        }
        .success {
            margin: 0 auto;
            height: 100px;
            width: 100%;
            background-color: green;
            color: black;
            margin-top: 200px;
        }
        .h1 {
            margin-top: 10%;
        }
        .next {
            padding: 5px 40px;
            border: 1px solid rgb(219, 219, 219);
            outline: none;
            color: rgb(40, 116, 240);
            font-weight: 500px;
            border-radius: 2px;
            height: 32px;
            cursor: pointer;
            font-size: 16px;
            font-family: Arial, Helvetica, sans-serif;
            box-shadow: -1px -1px 10px rgb(54, 54, 54), 1px 1px 10px rgb(54, 54, 54);
            letter-spacing: .1px;
            margin-left: 40%;
        }
    </style>
</head>
<body>
    <div class="success">
        <div><h1 style='margin-left:30%;'>SCHEDULE SUCCESSFULLY..</h1></div>
        <button class="next"><a href="ADMIN.jsp">next </a></button>
    </div>

    <%
    try {
        String MId = request.getParameter("MId");
        String screen = request.getParameter("screen");
        String slot = request.getParameter("slot");
               

        Class.forName("com.mysql.cj.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/movies_info?useSSL=false";
        String uname = "root";
        String pass = "root";

        try (Connection con = DriverManager.getConnection(url, uname, pass)) {

            // Check if the MId value exists in the movie table before insertion
            String checkSql = "SELECT * FROM movie WHERE id = ?";
            try (PreparedStatement checkStmt = con.prepareStatement(checkSql)) {
                checkStmt.setString(1, MId);
                try (ResultSet resultSet = checkStmt.executeQuery()) {

                    if (resultSet.next()) {
                        // MId exists in the movie table, proceed with the insertion
                        String insertSql = "INSERT INTO shows (MId, screen, slot) VALUES (?, ?, ?)";
                        try (PreparedStatement stmt = con.prepareStatement(insertSql)) {
                            stmt.setString(1, MId);
                            stmt.setString(2, screen);
                            stmt.setString(3, slot);
                              // Replace with an appropriate value for the 'booked' column
                            stmt.executeUpdate();
                        }
                    } else {
                        // MId does not exist in the movie table, handle the error
                        out.println("Error: Movie with ID " + MId + " does not exist.");
                    }
                }
            }
        }

    } catch (Exception e) {
        // Handle exceptions appropriately
        e.printStackTrace();
    }
    %>
</body>
</html>
