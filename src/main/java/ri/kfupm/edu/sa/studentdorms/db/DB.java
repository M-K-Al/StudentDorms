package ri.kfupm.edu.sa.studentdorms.db;

import org.jetbrains.annotations.NotNull;

import java.sql.Connection;
import java.sql.DriverManager;

public class DB {

    private static final Object lock = new Object();
    private static Connection conn = null;

    @NotNull
    public static Connection getConnection() {
        synchronized (lock) {
            if (conn == null) {
                try {
                    Class.forName("org.apache.derby.jdbc.EmbeddedDriver");
                    final String userName = System.getProperty("user.name");
                    final String dbPath = "C:\\Users\\" + userName + "\\IdeaProjects\\StudentDorms\\student_dorms";
                    conn = DriverManager.getConnection("jdbc:derby:" + dbPath);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            return conn;
        }
    }

}
