<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script> 
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
    body {
        text-align: center;
    }

    .container {
        margin: 20px auto;
        width: 70%;
        border: 1px solid #ddd;
        background-color: #f9f9f9;
        padding: 10px;
    }

    .container table {
        width: 100%;
        border-collapse: collapse;
        margin-bottom: 20px;
    }

    .container th,
    .container td {
        border: 1px solid #ddd;
        padding: 8px;
        text-align: left;
    }

    .container th {
        background-color: #f2f2f2;
    }

    .book-movie-container {
        margin: 20px auto;
        width: 30%;
        border: 1px solid #ddd;
        background-color: #f9f9f9;
        padding: 10px;
    }

    .book-movie-container input,
    .book-movie-container select {
        width: 100%;
        padding: 10px;
        margin-bottom: 10px;
        border: 1px solid #ddd;
    }

    .book-movie-container input[type="submit"] {
        width: 100%;
        padding: 10px;
        background-color: #428bca;
        color: #fff;
        border: none;
        cursor: pointer;
    }
</style>

</head>

<body>
    <form action="/OnlineBookMyShow/Book" method="post">

        <div class="container">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>Select</th>
                        <th>Movie</th>
                        <th>Show Slot</th>
                        <th>Duration</th>
                        <th>Screen</th>
                        <th>Available</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        String url = "jdbc:mysql://localhost:3306/movies_info";
                        String uname = "root";
                        String pass = "root";
                        

                        try (Connection conn = DriverManager.getConnection(url, uname, pass);
                             Statement stmt = conn.createStatement();
                             ResultSet rs = stmt.executeQuery("SELECT shows.id, movie.title, shows.slot, movie.duration, shows.screen,(CASE WHEN shows.screen = 1 THEN 100 ELSE (CASE WHEN shows.screen = 2 THEN 150 ELSE 250 END) END) - shows.booked AS avail FROM shows INNER JOIN movie ON shows.MId = movie.id")) {

                            while (rs.next()) {
                                int id = rs.getInt("id");
                                String moviename = rs.getString("title");
                                int slot = rs.getInt("slot");
                                int duration = rs.getInt("duration");
                                int screen = rs.getInt("screen");
                                int avail = rs.getInt("avail");
                               // System.out.println(id);
                               // System.out.println(moviename);
                               // System.out.println(slot);
                               // System.out.println(duration);
                               // System.out.println(avail);
                                int start = 0, end = 0;
                                if (slot == 1) {
                                    start = 9;
                                    end = 1;
                                } else if (slot == 2) {
                                    start = 1;
                                    end = 5;
                                } else if (slot == 3) {
                                    start = 5;
                                    end = 9;
                                }
                    %>
                            <tr>
                                <td><input type="radio" value="<%= id %>" name="selectedShow"></td>
                                <td><%= moviename %></td>
                                <td><%= start + " - " + end %></td>
                                <td><%= duration %></td>
                                <td><%= screen %></td>
                                <td><%= avail %></td>
                            </tr>
                    <%
                            }
                        } catch (SQLException e) {
                            e.printStackTrace();
                        }
                    %>
                </tbody>
            </table>
        </div>

        <div class="book-movie-container">
            <h1>BOOK MOVIE</h1>
            <input type="number" name="num" placeholder="No. of seats" style="width: 100%; padding: 10px; margin-bottom: 10px;">
            <select name="class" style="width: 100%; padding: 10px; margin-bottom: 10px;">
                <option value="silver">Silver - Rs.100</option>
                <option value="gold">Gold - Rs.150</option>
                <option value="platinum">Platinum - Rs.200</option>
            </select>
            <br /><br />
            <input class="btn btn-primary" type="submit" value="BOOK NOW" style="width: 100%;">
        </div>
    </form>
</body>
</html>