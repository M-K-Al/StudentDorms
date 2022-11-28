package ri.kfupm.edu.sa.student_dorms.endpoints;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.jetbrains.annotations.NotNull;

import java.io.IOException;

@WebServlet(value = "/discoverIP")
public class DiscoverIPServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, @NotNull HttpServletResponse response) throws IOException {

        response.setContentType("text/csv");
        response.getWriter().write("172.0.0.1,172.0.0.2,172.0.0." + Math.floor(Math.random() * 10));
        response.getWriter().flush();
    }
}
