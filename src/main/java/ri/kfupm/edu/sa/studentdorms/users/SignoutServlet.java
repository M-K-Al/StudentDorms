package ri.kfupm.edu.sa.studentdorms.users;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import org.jetbrains.annotations.NotNull;

import java.io.IOException;

@WebServlet("/signout")
public class SignoutServlet extends HttpServlet {
    @Override
    protected void doPost(@NotNull HttpServletRequest req, @NotNull HttpServletResponse resp) throws ServletException, IOException {
        req.logout();
        resp.sendRedirect("/");
    }
}
