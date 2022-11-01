import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Objects;

@WebServlet(name = "CounterServlet", urlPatterns = "/count")
public class CounterServlet extends HttpServlet {
    int count = 0;
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
        count += 1;
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();

        if (req.getParameter("reset") != null && req.getParameter("reset").equals("true")){
            count = 0;
            res.sendRedirect("/count");
        }

        out.println("Count: " + count);
    }
}
