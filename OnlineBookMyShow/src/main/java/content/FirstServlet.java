package content;
//FirstServlet.java
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import content.LoginDao;

public class FirstServlet extends HttpServlet {
 public void doPost(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {

     response.setContentType("text/html");
     PrintWriter out = response.getWriter();

     String username = request.getParameter("fname");
     String password = request.getParameter("password");

     System.out.println("Received login request for username: " + username);

     if (LoginDao.validate(username, password)) {
         System.out.println("Login successful for username: " + username);
         RequestDispatcher rd = request.getRequestDispatcher("/OnlineBookMyShow/WelcomeServlet");
         rd.forward(request, response);
     } else {
         System.out.println("Login failed for username: " + username);
         out.print("Sorry, username or password error");
         RequestDispatcher rd = request.getRequestDispatcher("UserLogin.jsp");
         rd.include(request, response);
     }
     out.close();
 }
}
