package ri.kfupm.edu.sa.student_dorms.cache.entities;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public record EndpointCache(
        @NotNull String ip,
        @Nullable String name,
        @Nullable String relativeHumidity,
        @Nullable String[] temperature,
        @Nullable String illuminance,
        @Nullable String co2,
        @Nullable String occupancy
) {
    public EndpointCache(@NotNull String ip, @Nullable String name) {
        this(ip, name, "15", new String[]{"20", "21"}, null, null, null);
    }
}
