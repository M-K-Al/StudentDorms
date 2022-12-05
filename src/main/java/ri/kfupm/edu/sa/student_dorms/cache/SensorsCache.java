package ri.kfupm.edu.sa.student_dorms.cache;

import ri.kfupm.edu.sa.student_dorms.cache.entities.EndpointCache;
import ri.kfupm.edu.sa.student_dorms.cache.rs.EndpointCachePublisher;
import ri.kfupm.edu.sa.student_dorms.db.daos.EndpointDao;
import ri.kfupm.edu.sa.student_dorms.db.entities.Endpoint;
import ri.kfupm.edu.sa.student_dorms.db.impls.EndpointDaoImpl;
import ri.kfupm.edu.sa.student_dorms.db.rs.EndpointPublisher;

import java.util.HashMap;
import java.util.Map;
import java.util.stream.Collectors;

public class SensorsCache {

    private static final Map<Long, EndpointCache> CACHE_MAP;

    static {
        // TODO: add data from file when first initialized
        final EndpointDao dao = new EndpointDaoImpl();
        CACHE_MAP = new HashMap<>(dao.findAll().stream().collect(Collectors.toMap(Endpoint::id, entry -> new EndpointCache(entry.ipAddress(), entry.name()))));
        EndpointPublisher.getPublisher().subscribe(endpointModification -> {
            final var endpoint = endpointModification.endpoint();
            switch (endpointModification.modification()) {
                case INSERT -> CACHE_MAP.put(endpoint.id(), new EndpointCache(endpoint.ipAddress(), endpoint.name()));
                case DELETION -> CACHE_MAP.remove(endpoint.id());
            }
        });

        EndpointCachePublisher.getPublisher().subscribe(entry -> {
            var newCache = entry.getValue();
            newCache.setName(CACHE_MAP.get(entry.getKey()).getName());
            CACHE_MAP.put(entry.getKey(), newCache);
        });
    }

    public static Map<Long, EndpointCache> getCacheMap() {
        return CACHE_MAP;
    }
}
