import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Objects;

@WebServlet(name = "TestServlet", urlPatterns = "/test")
public class TestServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");
        // http://localhost:8080/test?greeting=Howdy
        String greeting = request.getParameter("greeting");
        // http://localhost:8080/test?greeting=Howdy&person=Mia
        String person = request.getParameter("person");

        PrintWriter out = response.getWriter();
        out.println("<h1>" + greeting+ " from " + person +"!</h1>");
    }
}
