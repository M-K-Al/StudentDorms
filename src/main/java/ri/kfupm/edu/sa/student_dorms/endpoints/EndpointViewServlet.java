package ri.kfupm.edu.sa.student_dorms.endpoints;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.jetbrains.annotations.NotNull;
import ri.kfupm.edu.sa.student_dorms.db.daos.EndpointDao;
import ri.kfupm.edu.sa.student_dorms.db.impls.EndpointDaoImpl;

import java.io.IOException;

@WebServlet("/endpoint")
public class EndpointViewServlet extends HttpServlet {
    @Override
    protected void doGet(@NotNull HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        final EndpointDao dao = new EndpointDaoImpl();
        var endpoint = dao.findById(Integer.parseInt(req.getParameter("id")));
        req.setAttribute("endpoint", endpoint);
        req.getRequestDispatcher("/endpoints/endpoint-view.jsp").forward(req, resp);
    }
}
