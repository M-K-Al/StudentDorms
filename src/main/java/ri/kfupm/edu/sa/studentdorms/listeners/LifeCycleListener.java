package ri.kfupm.edu.sa.studentdorms.listeners;

import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import jakarta.servlet.annotation.WebListener;
import ri.kfupm.edu.sa.studentdorms.db.DB;

@WebListener
public class LifeCycleListener implements ServletContextListener {

    public LifeCycleListener() {
    }

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        /* This method is called when the servlet context is initialized(when the Web application is deployed). */
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        DB.shutdown();
    }

}
