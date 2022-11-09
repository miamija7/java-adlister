import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "GuessServlet", urlPatterns = "/guess")
public class GuessServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String param = request.getParameter("guess");
        int guess;
        int answer = (int)Math.floor(Math.random()*(3-1+1)+1);

        if(param != null && !param.equals("")){
            guess = Integer.parseInt(param);
            request.setAttribute("answer", answer);
            request.setAttribute("guess", guess);

            if (guess == answer){
                request.getRequestDispatcher("/correct.jsp").forward(request, response);
            } else {
                request.getRequestDispatcher("/incorrect.jsp").forward(request, response);
            }
        } else {
            System.out.println(answer);
            request.getRequestDispatcher("/guess.jsp").forward(request, response);
        }
    }
}
