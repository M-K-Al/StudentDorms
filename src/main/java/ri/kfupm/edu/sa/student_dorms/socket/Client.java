package ri.kfupm.edu.sa.student_dorms.socket;

import org.jetbrains.annotations.NotNull;
import ri.kfupm.edu.sa.student_dorms.cache.SensorsCache;
import ri.kfupm.edu.sa.student_dorms.cache.entities.EndpointCache;

import java.net.Socket;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;

public class Client {

    static {
        loop();
    }

    public static void loop() {
        try (final Socket socket = new Socket("localhost", 7588)) {
            final var in = socket.getInputStream();
            while (!Thread.currentThread().isInterrupted()) {
                if (in.available() > 0) {
                    receivedData(new String(in.readNBytes(in.available()), StandardCharsets.UTF_8));
                }
            }
        } catch (final Exception e) {
            e.printStackTrace();
        }
    }

    private static void receivedData(@NotNull String data) {
        System.out.println("Received new data: " + data);
        if (data.isEmpty()) return;
        var iot = data.split("-");
        var sensorsReadings = iot[0].split(","); //
        try {
            var temps = new ArrayList<String>();
            final var cache = new EndpointCache();
            String ip = null;
            for (int i = 0, length = sensorsReadings.length; i < length; i += 2) {
                final String abbr = sensorsReadings[i];
                final String value = sensorsReadings[i + 1];
                switch (SensorType.fromAbbreviation(abbr)) {
                    case IP_ADDRESS -> ip = value;
                    case TIMESTAMP -> cache.setTimestamp(value);
                    case RELATIVE_HUMIDITY -> cache.setRelativeHumidity(value);
                    case TEMPERATURE -> temps.add(value);
                    case ILLUMINANCE -> cache.setIlluminance(value);
                    case CO2 -> cache.setCo2(value);
                    case OCCUPANCY -> cache.setOccupancy(value);
                    case UNKNOWN -> System.err.println("Unknown datatype received: " + abbr + " with value: " + value);
                }
            }
            cache.setTemperature(temps.toArray(new String[0]));
            SensorsCache.put(ip, cache);
        } catch (final Exception e) {
            e.printStackTrace();
        }
    }

    enum SensorType {

        TIMESTAMP("ts"),

        IP_ADDRESS("ip"),

        RELATIVE_HUMIDITY("rh"),

        TEMPERATURE("t"),

        ILLUMINANCE("i"),

        CO2("co2"),

        OCCUPANCY("o"),

        UNKNOWN("N/A");

        final private String abbreviation;

        SensorType(String abbreviation) {
            this.abbreviation = abbreviation;
        }

        @SuppressWarnings("unused")
        public String getAbbreviation() {
            return abbreviation;
        }

        @NotNull
        public static SensorType fromAbbreviation(@NotNull String abbr) {
            return Arrays.stream(values()).filter(type -> type.abbreviation.equals(abbr)).findFirst().orElse(UNKNOWN);
        }
    }
}
