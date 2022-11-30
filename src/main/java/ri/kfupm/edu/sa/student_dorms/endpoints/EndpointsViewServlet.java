package ri.kfupm.edu.sa.student_dorms.endpoints;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.HttpMethodConstraint;
import jakarta.servlet.annotation.ServletSecurity;
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
@ServletSecurity(httpMethodConstraints = {@HttpMethodConstraint(value = "POST", rolesAllowed = {"admin"})})
public class EndpointsViewServlet extends HttpServlet {
    @Override
    protected void doGet(@NotNull HttpServletRequest req, @NotNull HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("endpoints", SensorsCache.getCacheMap());
        req.getRequestDispatcher("/endpoints/endpoints-view.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(@NotNull HttpServletRequest req, @NotNull HttpServletResponse resp) throws IOException {
        final EndpointDao dao = new EndpointDaoImpl();
        try {
            switch (req.getParameter("action")) {
                case "add" -> {
                    var name = req.getParameter("name");
                    var ipAddress = req.getParameter("ipAddress");
                    SensorsCache.put(new Endpoint(dao.insert(new Endpoint(name, ipAddress)), name, ipAddress));
                }
                case "delete" -> {
                    if (dao.delete(Integer.parseInt(req.getParameter("id"))))
                        SensorsCache.remove(req.getParameter("ip"));
                }
            }
        } catch (final Exception e) {
            e.printStackTrace();
        }
        resp.sendRedirect("/endpoints");
    }
}
