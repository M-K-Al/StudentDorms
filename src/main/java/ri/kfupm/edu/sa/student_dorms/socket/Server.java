package ri.kfupm.edu.sa.student_dorms.socket;

import java.net.ServerSocket;
import java.nio.charset.StandardCharsets;

public class Server {

    @SuppressWarnings("BusyWait")
    public static void main(String[] args) {
//        var socketThread = new Thread(() -> {
//            try {
//                Class.forName("ri.kfupm.edu.sa.student_dorms.socket.Client");
//            } catch (ClassNotFoundException e) {
//                e.printStackTrace();
//            }
//        });
//        socketThread.setDaemon(true);
//        socketThread.start();

        try (final ServerSocket server = new ServerSocket(7588)) {
            final var out = server.accept().getOutputStream();
            //noinspection InfiniteLoopStatement
            while (true) {
                out.write("ip,172.0.0.1,rh,%.0f,t,%.0f".formatted(20 + Math.random() * 10, 16 + Math.random() * 2).getBytes(StandardCharsets.UTF_8));
                Thread.sleep(500);
                out.write("ip,172.0.0.2,rh,%.0f,t,%.0f,i,406".formatted(20 + Math.random() * 10, 16 + Math.random() * 2).getBytes(StandardCharsets.UTF_8));
                Thread.sleep(500);
                out.write("ip,172.0.0.3,t,%.0f".formatted( 16 + Math.random() * 1).getBytes(StandardCharsets.UTF_8));
                Thread.sleep(500);
                out.write("ip,172.0.0.4,rh,%.0f,t,%.0f,o,1".formatted(20 + Math.random() * 10, 16 + Math.random() * 2).getBytes(StandardCharsets.UTF_8));
                Thread.sleep(500);
            }
        } catch (final Exception e) {
            e.printStackTrace();
        }
    }

}
