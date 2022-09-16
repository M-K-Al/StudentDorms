package ri.kfupm.edu.sa.studentdorms.db.entity;

public record Endpoint(int id, String name, String ipAddress) {
    public Endpoint(String name, String ipAddress) {
        this(0, name, ipAddress);
    }
}
