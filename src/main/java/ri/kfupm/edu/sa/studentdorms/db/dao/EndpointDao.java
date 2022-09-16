package ri.kfupm.edu.sa.studentdorms.db.dao;

import ri.kfupm.edu.sa.studentdorms.db.entity.Endpoint;

import java.util.List;

@SuppressWarnings("unused")
public interface EndpointDao {

    void insert(Endpoint endpoint);

    List<Endpoint> findAll();

    Endpoint findById(int id);

}
