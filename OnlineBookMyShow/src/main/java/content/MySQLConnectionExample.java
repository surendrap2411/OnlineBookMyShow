package content;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MySQLConnectionExample {
    public static void main(String[] args) {
        Connection connection = null;
        try {
            // Register MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Database URL
            String url = "jdbc:mysql://localhost:3306/movies_info;";

            // Database credentials
            String username = "root";
            String password = "root";

            // Establishing connection
            connection = DriverManager.getConnection(url, username, password);

            if (connection != null) {
                System.out.println("Connected to the database!");
                // Perform database operations here
            } else {
                System.out.println("Failed to make connection!");
            }
        } catch (ClassNotFoundException e) {
            System.out.println("MySQL JDBC driver not found!");
            e.printStackTrace();
        } catch (SQLException e) {
            System.out.println("Connection failed! Check your database URL, username, and password.");
            e.printStackTrace();
        } finally {
            // Close connection in finally block to ensure it gets closed regardless of success or failure
            try {
                if (connection != null) {
                    connection.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
