package content;
//LoginDao.java
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginDao {
 public static boolean validate(String username, String password) {
     Connection con = null;
     PreparedStatement pst = null;
     ResultSet rs = null;

     try {
         Class.forName("com.mysql.jdbc.Driver");
         con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movies_info", "root", "root");

         pst = con.prepareStatement("SELECT * FROM information WHERE fname=? AND password=?");
         pst.setString(1, username);
         pst.setString(2, password);

         System.out.println("Executing SQL Query: " + pst.toString());

         rs = pst.executeQuery();

         if (rs.next()) {
             // User found, return true
             return true;
         } else {
             // User not found, return false
             return false;
         }
     } catch (ClassNotFoundException | SQLException e) {
         // Log any exceptions
         e.printStackTrace();
         return false;
     } finally {
         // Close resources
         try {
             if (con != null) con.close();
             if (pst != null) pst.close();
             if (rs != null) rs.close();
         } catch (SQLException e) {
             e.printStackTrace();
         }
     }
 }
}
