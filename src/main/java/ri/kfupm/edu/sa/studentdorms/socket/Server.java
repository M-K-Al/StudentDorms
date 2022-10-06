package ri.kfupm.edu.sa.studentdorms.socket;

import java.io.IOException;
import java.net.ServerSocket;
import java.nio.charset.StandardCharsets;

public class Server {

    public static void main(String[] args) throws IOException {
        start();
    }

    public static void start() throws IOException {
        try (var server = new ServerSocket(27015)) {
            var client = server.accept();
            try (var in = client.getInputStream()) {
                //noinspection InfiniteLoopStatement
                while (true) {
                    if (in.available() > 0) {
                        var ip = new String(in.readNBytes(2));
                        //noinspection ResultOfMethodCallIgnored
                        in.skip(1);
                        var data = new String(in.readNBytes(in.available()), StandardCharsets.UTF_8);
                    }
                }
            }
        }
    }
}
