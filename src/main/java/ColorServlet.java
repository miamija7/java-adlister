import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ColorServlet", urlPatterns = "/pickcolor")
public class ColorServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String color = request.getParameter("color");
        if(color != null) {
            request.setAttribute("color", color);
            request.getRequestDispatcher("/viewcolor.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("/pickcolor.jsp").forward(request, response);
        }
    }
}
