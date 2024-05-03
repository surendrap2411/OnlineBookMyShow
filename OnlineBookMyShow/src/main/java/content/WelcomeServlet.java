package content;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/OnlineBookMyShow/WelcomeServlet")
public class WelcomeServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String n = request.getParameter("fname");
        out.print("Welcome dear " + n);
        out.print("<br/><a href='/OnlineBookMyShow/MovieBookTable.jsp'>Allow for Booking</a>");
        out.close();
    }
}
