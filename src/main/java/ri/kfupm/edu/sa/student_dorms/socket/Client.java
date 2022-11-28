package ri.kfupm.edu.sa.student_dorms.socket;

import java.net.Socket;
import java.nio.charset.StandardCharsets;

public class Client {

    static {
//        loop();
    }

    public static void loop() {
        try (final Socket socket = new Socket("localhost", 7588)) {
            final var in = socket.getInputStream();
            while (!Thread.currentThread().isInterrupted()) {
                if (in.available() > 0) {
                    final var reading = new String(in.readNBytes(in.available()), StandardCharsets.UTF_8);
                    var iot = reading.split("-");
                    var sensorsReadings = iot[0];

                }
            }
        } catch (final Exception e) {
            e.printStackTrace();
        }
    }
}
