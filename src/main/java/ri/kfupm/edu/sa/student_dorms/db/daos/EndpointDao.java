package ri.kfupm.edu.sa.student_dorms.db.daos;

import ri.kfupm.edu.sa.student_dorms.db.entities.Endpoint;

import java.util.List;

@SuppressWarnings("UnusedReturnValue")
public interface EndpointDao {

    long insert(Endpoint endpoint);

    boolean delete(int id);

    long findId(String ip);

    List<Endpoint> findAll();

    Endpoint findById(int id);

}
