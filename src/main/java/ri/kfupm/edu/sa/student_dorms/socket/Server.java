package ri.kfupm.edu.sa.student_dorms.socket;

import java.net.ServerSocket;
import java.nio.charset.StandardCharsets;

public class Server {

    public static void main(String[] args) {
        var socketThread = new Thread(() -> {
            try {
                Class.forName("ri.kfupm.edu.sa.student_dorms.socket.Client");
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }
        });
//        socketThread.setDaemon(true);
        socketThread.start();

        try (final ServerSocket server = new ServerSocket(7588)) {
            final var out = server.accept().getOutputStream();
            out.write("tester".getBytes(StandardCharsets.UTF_8));
        } catch (final Exception e) {
            e.printStackTrace();
        }
    }

}
