package ri.kfupm.edu.sa.studentdorms.endpoints;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.jetbrains.annotations.NotNull;
import ri.kfupm.edu.sa.studentdorms.db.dao.EndpointDao;
import ri.kfupm.edu.sa.studentdorms.db.entity.Endpoint;
import ri.kfupm.edu.sa.studentdorms.db.impl.EndpointDaoImpl;

import java.io.IOException;

@WebServlet("/endpoints")
public class EndpointsViewServlet extends HttpServlet {
    @Override
    protected void doGet(@NotNull HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/endpoints/endpoints-view.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(@NotNull HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        final EndpointDao dao = new EndpointDaoImpl();
        dao.insert(new Endpoint(req.getParameter("name"), req.getParameter("ipAddress")));
        req.getRequestDispatcher("/endpoints/endpoints-view.jsp").forward(req, resp);
    }
}
