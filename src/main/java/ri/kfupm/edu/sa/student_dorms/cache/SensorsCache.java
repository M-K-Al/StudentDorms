package ri.kfupm.edu.sa.student_dorms.cache;

import ri.kfupm.edu.sa.student_dorms.cache.entities.Endpoint;
import ri.kfupm.edu.sa.student_dorms.db.daos.EndpointDao;
import ri.kfupm.edu.sa.student_dorms.db.impls.EndpointDaoImpl;

import java.util.HashMap;
import java.util.Map;
import java.util.stream.Collectors;

public class SensorsCache {

    // TODO: add data from file when first initialized

    static {
        final EndpointDao dao = new EndpointDaoImpl();
        cache = new HashMap<>(dao.findAll().stream().collect(Collectors.toMap(entry -> entry.id() + "", entry -> new Endpoint(entry.ipAddress(), entry.name()))));
    }

    final static private Map<String, Endpoint> cache;

    public static void put(String key, Endpoint value) {
        cache.put(key, value);
    }

    public static Endpoint get(String key) {
        return cache.get(key);
    }

    public static Map<String, Endpoint> getCache() {
        return cache;
    }
}
