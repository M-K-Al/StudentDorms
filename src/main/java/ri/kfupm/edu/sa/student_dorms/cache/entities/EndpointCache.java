package ri.kfupm.edu.sa.student_dorms.cache.entities;

import org.jetbrains.annotations.Contract;
import org.jetbrains.annotations.NotNull;

import java.util.Arrays;
import java.util.Objects;

@SuppressWarnings("unused")
public final class EndpointCache {

    private String ip;
    private String name;
    private String timestamp;
    private String relativeHumidity;
    private String[] temperature;
    private String illuminance;
    private String co2;
    private String occupancy;

    public EndpointCache() {
    }

    public EndpointCache(String ip, String name) {
        this.ip = ip;
        this.name = name;
    }

    public EndpointCache(String ip,
                         String name,
                         String timestamp,
                         String relativeHumidity,
                         String[] temperature,
                         String illuminance,
                         String co2,
                         String occupancy) {
        this.ip = ip;
        this.name = name;
        this.timestamp = timestamp;
        this.relativeHumidity = relativeHumidity;
        this.temperature = temperature;
        this.illuminance = illuminance;
        this.co2 = co2;
        this.occupancy = occupancy;
    }

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTimestamp() {
        return timestamp;
    }

    public void setTimestamp(String timestamp) {
        this.timestamp = timestamp;
    }

    public String getRelativeHumidity() {
        return relativeHumidity;
    }

    public void setRelativeHumidity(String relativeHumidity) {
        this.relativeHumidity = relativeHumidity;
    }

    public String[] getTemperature() {
        return temperature;
    }

    public void setTemperature(String[] temperature) {
        this.temperature = temperature;
    }

    public String getIlluminance() {
        return illuminance;
    }

    public void setIlluminance(String illuminance) {
        this.illuminance = illuminance;
    }

    public String getCo2() {
        return co2;
    }

    public void setCo2(String co2) {
        this.co2 = co2;
    }

    public String getOccupancy() {
        return occupancy;
    }

    public void setOccupancy(String occupancy) {
        this.occupancy = occupancy;
    }

    @Override
    public int hashCode() {
        return Objects.hash(ip, name, relativeHumidity, Arrays.hashCode(temperature), illuminance, co2, occupancy);
    }

    @Contract(pure = true)
    @Override
    public @NotNull String toString() {
        return "EndpointCache[" +
                "ip=" + ip + ", " +
                "name=" + name + ", " +
                "relativeHumidity=" + relativeHumidity + ", " +
                "temperature=" + Arrays.toString(temperature) + ", " +
                "illuminance=" + illuminance + ", " +
                "co2=" + co2 + ", " +
                "occupancy=" + occupancy + ']';
    }


}
