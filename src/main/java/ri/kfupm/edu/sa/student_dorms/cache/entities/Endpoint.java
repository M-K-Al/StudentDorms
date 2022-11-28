package ri.kfupm.edu.sa.student_dorms.cache.entities;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public record Endpoint(
        @NotNull String ip,
        @Nullable String name,
        @Nullable String relativeHumidity,
        @Nullable String temperature,
        @Nullable String illuminance,
        @Nullable String co2,
        @Nullable String occupancy
) {
    public Endpoint(@NotNull String ip, @Nullable String name) {
        this(ip, name, "15", "20", null, null, null);
    }
}
