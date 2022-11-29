package ri.kfupm.edu.sa.student_dorms.db.daos;

import ri.kfupm.edu.sa.student_dorms.db.entities.Endpoint;

import java.util.List;

@SuppressWarnings("unused")
public interface EndpointDao {

    long insert(Endpoint endpoint);

    boolean delete(int id);

    List<Endpoint> findAll();

    Endpoint findById(int id);

}
