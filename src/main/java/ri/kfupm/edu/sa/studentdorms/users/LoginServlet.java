package ri.kfupm.edu.sa.studentdorms.users;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.jetbrains.annotations.NotNull;

import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(@NotNull HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        if (request.getUserPrincipal() == null)
            request.getRequestDispatcher("/login/login.jsp").forward(request, response);
        else
            response.sendRedirect("");
    }

    @Override
    protected void doPost(@NotNull HttpServletRequest request, @NotNull HttpServletResponse response) throws IOException, ServletException {
        try {
            request.login(request.getParameter("username"), request.getParameter("password"));
            response.sendRedirect("/");
        } catch (ServletException e) {
            request.setAttribute("error", true);
            request.getRequestDispatcher("/login/login.jsp").forward(request, response);
        }
    }

}
