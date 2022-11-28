package ri.kfupm.edu.sa.student_dorms.db.entities;

public record Endpoint(int id, String name, String ipAddress) {
    public Endpoint(String name, String ipAddress) {
        this(0, name, ipAddress);
    }
}
