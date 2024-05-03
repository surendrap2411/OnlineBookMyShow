package content;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import content.Show.ShowS3T3;
import content.Show.ShowS1T1;
@WebServlet("/Book")
public class Book extends HttpServlet {
    static int cost = 0;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String showId = request.getParameter("selectedShow");
        String num = request.getParameter("num");
        String clss = request.getParameter("class");

        
        System.out.println("class " + clss);
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        String url = "jdbc:mysql://localhost:3306/movies_info";
        String uname = "root";
        String pass = "root";
        String htmlResponse = "<html>";

        try {
            Connection conn = DriverManager.getConnection(url, uname, pass);
            PreparedStatement stmt = null;
            ResultSet rs = null, rs2 = null;
            String query = "SELECT MId, Screen, Slot, Booked FROM shows WHERE id=?";
            System.out.println("showid " + showId);
            stmt = conn.prepareStatement(query);
            stmt.setString(1, showId);
            rs = stmt.executeQuery();
            PrintWriter writer = response.getWriter();

            if (!rs.next()) {
                htmlResponse += "<h2> Wrong Entry</h2><br/>";
            } else {
                int screen = rs.getInt("Screen");
                int slot = rs.getInt("Slot");
                int booked = rs.getInt("booked");
                int MId = rs.getInt("MId");
                System.out.println("slot " + slot);
                System.out.println("screen  " + screen);
                System.out.println("booked  " + booked);
                System.out.println("mid  " + MId);
                query = "SELECT * FROM movie WHERE id=?";
                stmt = conn.prepareStatement(query);
                stmt.setInt(1, MId);
                rs = stmt.executeQuery();

                String name = null, genre = null, director = null;
                int duration = 0;

                if (rs.next()) {
                    name = rs.getString("title");
                    genre = rs.getString("genre");
                    duration = rs.getInt("duration");
                    director = rs.getString("director");
                }
                System.out.println("title " + name);

                System.out.println("class " + clss);
                System.out.println("num " + num);
                System.out.println("cost before calculation " + cost);

                if (clss.equals("s`ilver")) {
                    cost = 100;
                } else if (clss.equals("gold")) {
                    cost = 150;
                } else if (clss.equals("platinum")) {
                    cost = 200;
                }
                     
                System.out.println("cost after class calculation " + cost);

                int number = Integer.parseInt(num);
                cost *= number;
                
                System.out.println("cost of ticket " + cost);
                
                htmlResponse += "<div style='border: 2px solid #ddd; background-color: #f9f9f9; width: 600px; margin: 20px auto; padding: 20px;'>";

                htmlResponse += "<center><h1>Tickets Booked</h1></center><br>";
                htmlResponse +="----------------------------------------------------------------------------------------------------------------";
                htmlResponse += "<center><h3>order :" + num +" x "+ clss +" tickets</h3></center>";
                htmlResponse += "<center><h2>Please pay: $" + cost + "</h2></center><br>";  
                htmlResponse += "----------------------------------------------------------------------------------------------------------------";
                
                htmlResponse += "<center><h1>Movie Detail </h1></center>";
                htmlResponse += "<center><h3>Movie Name :"+name+ "-(" + duration + "minutes)</h3></center>";
                htmlResponse += "<center><h3>Genre: " + genre + "</h3></center>";

               
                htmlResponse +="----------------------------------------------------------------------------------------------------------------";
                htmlResponse += "<center><h1>Show Details:</h1></center>";
                htmlResponse += "<center><h1>Screen: " + screen + "</h1></center>";
                htmlResponse += "<center><h1>Slot: " + slot + "</h1></center>";

                htmlResponse += "</div>"; 
               
                switch (screen) {
                // ... (remaining code unchanged)
                case 1:
                    if (slot == 1) {
                        Show.ShowS1T1 m = new Show.ShowS1T1(name, genre, duration, director, 190); // Initialize with 0 booked seats
                        ((ShowS1T1) m).setBooked(booked);
                        if (!((ShowS1T1) m).bookSeats(number)) {
                            htmlResponse += "<center> <h2>Show Full 1</h3><br/></center>";
                        }else {
                        htmlResponse += "<center><div style='border:1px solid black;border-radius:3px;width:400px;'>";
                        query = "UPDATE shows SET Booked=? WHERE id=?";
                        try (PreparedStatement preparedstmt = conn.prepareStatement(query)) {
                            preparedstmt.setInt(1, m.getBooked());
                            preparedstmt.setString(2, showId);
                            preparedstmt.executeUpdate();
                        }
                    }
                } else if (slot == 2) {
                    Show.ShowS1T2 m = new Show.ShowS1T2(name, genre, duration, director, 200);
                    m.setBooked(booked);
                    if (!m.bookSeats(number)) {
                        htmlResponse += "<center> <h2>Show Full 2</h3><br/></center>";
                    } else {
                        htmlResponse += "<center><div style='border:1px solid black;border-radius:3px;width:400px;'>";
                        query = "UPDATE shows SET Booked=? WHERE id=?";
                        try (PreparedStatement preparedstmt = conn.prepareStatement(query)) {
                            preparedstmt.setInt(1, m.getBooked());
                            preparedstmt.setString(2, showId);
                            preparedstmt.executeUpdate();
                        }
                    }
                } else {
                    Show.ShowS1T3 m = new Show.ShowS1T3(name, genre, duration, director,210);
                    m.setBooked(booked);
                    if (!m.bookSeats(number)) {
                        htmlResponse += "<center> <h2>Show Full 3</h3><br/></center>";
                    } else {
                        htmlResponse += "<center><div style='border:1px solid black;border-radius:3px;width:400px;'>";
                        query = "UPDATE shows SET Booked=? WHERE id=?";
                        try (PreparedStatement preparedstmt = conn.prepareStatement(query)) {
                            preparedstmt.setInt(1, m.getBooked());
                            preparedstmt.setString(2, showId);
                            preparedstmt.executeUpdate();
                        }
                    }
                }
                break;
           
            case 2:
                if (slot == 1) {
                    Show.ShowS2T1 m = new Show.ShowS2T1(name, genre, duration, director, 220);
                    m.setBooked(booked);
                    if (!m.bookSeats(number)) {
                        htmlResponse += "<center> <h2>Show Full 4</h3><br/></center>";
                    } else {
                        htmlResponse += "<center><div style='border:1px solid black;border-radius:3px;width:400px;'>";
                        query = "UPDATE shows SET Booked=? WHERE id=?";
                        try (PreparedStatement preparedstmt = conn.prepareStatement(query)) {
                            preparedstmt.setInt(1, m.getBooked());
                            preparedstmt.setString(2, showId);
                            preparedstmt.executeUpdate();
                        }
                    }
                } else if (slot == 2) {
                    Show.ShowS2T2 m = new Show.ShowS2T2(name, genre, duration, director, 230);
                    m.setBooked(booked);
                    if (!m.bookSeats(number)) {
                        htmlResponse += "<center> <h2>Show Full 5</h3><br/></center>";
                    } else {
                        htmlResponse += "<center><div style='border:1px solid black;border-radius:3px;width:400px;'>";
                        query = "UPDATE shows SET Booked=? WHERE id=?";
                        try (PreparedStatement preparedstmt = conn.prepareStatement(query)) {
                            preparedstmt.setInt(1, m.getBooked());
                            preparedstmt.setString(2, showId);
                            preparedstmt.executeUpdate();
                        }
                    }
                } else {
                    Show.ShowS2T3 m = new Show.ShowS2T3(name, genre, duration, director, 240);
                    m.setBooked(booked);
                    if (!m.bookSeats(number)) {
                        htmlResponse += "<center> <h2>Show Full 6</h3><br/></center>";
                    } else {
                        htmlResponse += "<center><div style='border:1px solid black;border-radius:3px;width:400px;'>";
                        query = "UPDATE shows SET Booked=? WHERE id=?";
                        try (PreparedStatement preparedstmt = conn.prepareStatement(query)) {
                            preparedstmt.setInt(1, m.getBooked());
                            preparedstmt.setString(2, showId);
                            preparedstmt.executeUpdate();
                        }
                    }
                }
                break;
            case 3:
                if (slot == 1) {
                    Show.ShowS3T1 m = new Show.ShowS3T1(name, genre, duration, director, 250);
                    m.setBooked(booked);
                    if (!m.bookSeats(number)) {
                        htmlResponse += "<center> <h2>Show Full 7</h3><br/></center>";
                    } else {
                        htmlResponse += "<center><div style='border:1px solid black;border-radius:3px;width:400px;'>";
                        query = "UPDATE shows SET Booked=? WHERE id=?";
                        try (PreparedStatement preparedstmt = conn.prepareStatement(query)) {
                            preparedstmt.setInt(1, m.getBooked());
                            preparedstmt.setString(2, showId);
                            preparedstmt.executeUpdate();
                        }
                    }
                } else if (slot == 2) {
                    Show.ShowS3T2 m = new Show.ShowS3T2(name, genre, duration, director, 260);
                    m.bookSeats(booked);
                    if (!m.bookSeats(number)) {
                        htmlResponse += "<center> <h2>Show Full 8 </h3><br/></center>";
                    } else {
                        htmlResponse += "<center><div style='border:1px solid black;border-radius:3px;width:400px;'>";
                        query = "UPDATE shows SET Booked=? WHERE id=?";
                        try (PreparedStatement preparedstmt = conn.prepareStatement(query)) {
                            preparedstmt.setInt(1, m.getBooked());
                            preparedstmt.setString(2, showId);
                            preparedstmt.executeUpdate();
                        }
                    }
                } else {
                    ShowS3T3 m = new ShowS3T3(name, genre, duration, director, 270);
                    m.setBooked(booked);
                    if (!m.bookSeats(number)) {
                        htmlResponse += "<center> <h2>Show Full 9</h3><br/></center>";
                    } else {
                        htmlResponse += "<center><div style='border:1px solid black;border-radius:3px;width:400px;'>";
                        query = "UPDATE shows SET Booked=? WHERE id=?";
                        try (PreparedStatement preparedstmt = conn.prepareStatement(query)) {
                            preparedstmt.setInt(1, m.getBooked());
                            preparedstmt.setString(2, showId);
                            preparedstmt.executeUpdate();
                        }
                    }
                }
                break;
                
            default:
                htmlResponse += "<center><h2>wrong input</h2><br></center>";
                break;
                }
            }
            conn.close();
            htmlResponse += "</html>";
            writer.println(htmlResponse);

           
            System.out.println("HTML Response: " + htmlResponse);

        } catch (SQLException e) {
            System.err.println("Got an exception!");
            System.err.println(e.getMessage());
            e.printStackTrace(); 

            
            htmlResponse += "<h2>Error occurred while processing the request.</h2><br/>";
            htmlResponse += "</html>";
            response.getWriter().println(htmlResponse);
        }
    }
}
