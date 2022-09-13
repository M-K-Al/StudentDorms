package ri.kfupm.edu.sa.studentdorms.endpoints;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.jetbrains.annotations.NotNull;

import java.io.IOException;

@WebServlet("/endpoints")
public class EndpointsViewServlet extends HttpServlet {
    @Override
    protected void doGet(@NotNull HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/endpoints/endpoints-view.jsp").forward(request, response);
    }
}
