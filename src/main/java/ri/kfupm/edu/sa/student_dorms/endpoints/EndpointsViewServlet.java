package ri.kfupm.edu.sa.student_dorms.endpoints;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.jetbrains.annotations.NotNull;
import ri.kfupm.edu.sa.student_dorms.cache.SensorsCache;
import ri.kfupm.edu.sa.student_dorms.db.daos.EndpointDao;
import ri.kfupm.edu.sa.student_dorms.db.entities.Endpoint;
import ri.kfupm.edu.sa.student_dorms.db.impls.EndpointDaoImpl;

import java.io.IOException;

@WebServlet("/endpoints")
public class EndpointsViewServlet extends HttpServlet {
    @Override
    protected void doGet(@NotNull HttpServletRequest req, @NotNull HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("endpoints", SensorsCache.getCache());
        req.getRequestDispatcher("/endpoints/endpoints-view.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(@NotNull HttpServletRequest req, @NotNull HttpServletResponse resp) throws IOException {
        if (req.isUserInRole("admin")) {
            final EndpointDao dao = new EndpointDaoImpl();
            try {
                switch (req.getParameter("action")) {
                    case "add" -> dao.insert(new Endpoint(req.getParameter("name"), req.getParameter("ipAddress")));
                    case "delete" -> dao.delete(Integer.parseInt(req.getParameter("id")));
                }
            } catch (final Exception e) {
                e.printStackTrace();
            }
            req.removeAttribute("endpoints");
            resp.sendRedirect("/endpoints");
        }
    }
}
