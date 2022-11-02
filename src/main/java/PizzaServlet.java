import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;

@WebServlet(name = "PizzaServlet", urlPatterns = "/pizza-order")
public class PizzaServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        req.getRequestDispatcher("/pizzabs.jsp").forward(req, res);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res){
        System.out.println(req.getParameter("crust"));
        System.out.println(req.getParameter("cheeseAmt"));
        System.out.println(req.getParameter("sauce"));
        System.out.println(req.getParameter("sauceAmt"));
        String[] toppings = req.getParameterValues("toppings");
        System.out.println(Arrays.toString(toppings));
    }
}
