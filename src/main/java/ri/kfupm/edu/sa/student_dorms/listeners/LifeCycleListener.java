package ri.kfupm.edu.sa.student_dorms.listeners;

import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import jakarta.servlet.annotation.WebListener;
import ri.kfupm.edu.sa.student_dorms.db.DB;

@WebListener
public class LifeCycleListener implements ServletContextListener {

    public LifeCycleListener() {
    }


    @Override
    public void contextInitialized(ServletContextEvent sce) {
        try {
            Class.forName("ri.kfupm.edu.sa.student_dorms.cache.SensorsCache");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        DB.shutdown();
    }

}
