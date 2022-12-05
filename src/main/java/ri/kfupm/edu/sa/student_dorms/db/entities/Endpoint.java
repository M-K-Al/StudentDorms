package ri.kfupm.edu.sa.student_dorms.db.entities;

public record Endpoint(long id, String name, String ipAddress) {
    public Endpoint(long id) {
        this(id, null, null);
    }

    public Endpoint(String name, String ipAddress) {
        this(0, name, ipAddress);
    }

}
