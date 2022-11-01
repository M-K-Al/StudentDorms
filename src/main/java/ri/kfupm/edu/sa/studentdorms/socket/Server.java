package ri.kfupm.edu.sa.studentdorms.socket;

import org.jetbrains.annotations.Contract;
import org.jetbrains.annotations.NotNull;

import java.io.IOException;
import java.net.Socket;
import java.nio.charset.StandardCharsets;

public class Server {

    private static final Socket client;

    static {
        try {
            client = new Socket("localhost", 7588);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    @Contract("_ -> new")
    public static @NotNull String getData(@NotNull String ip) throws IOException {
        client.getOutputStream().write(ip.getBytes(StandardCharsets.UTF_8));
        var in = client.getInputStream();
        while (true) {
            if (in.available() > 0) return new String(in.readNBytes(in.available()), StandardCharsets.UTF_8);
        }
    }
}
