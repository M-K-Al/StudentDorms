package ri.kfupm.edu.sa.studentdorms.socket;

import org.jetbrains.annotations.Contract;
import org.jetbrains.annotations.NotNull;

import java.io.IOException;
import java.net.Socket;
import java.net.SocketException;
import java.nio.charset.StandardCharsets;

public class Server {

    private static Socket client;

    @Contract("_ -> new")
    public static @NotNull String getData(@NotNull String ip) throws IOException {
        if (client == null) client = new Socket("localhost", 7588);
        client.getOutputStream().write(ip.getBytes(StandardCharsets.UTF_8));
        var in = client.getInputStream();
        final long start = System.currentTimeMillis();
        while (System.currentTimeMillis() - start < 3000) {
            if (in.available() > 0) return new String(in.readNBytes(in.available()), StandardCharsets.UTF_8);
        }
        return "Timeout";
    }
}
