package ri.kfupm.edu.sa.student_dorms.cache;

import org.jetbrains.annotations.NotNull;
import ri.kfupm.edu.sa.student_dorms.cache.entities.EndpointCache;
import ri.kfupm.edu.sa.student_dorms.db.daos.EndpointDao;
import ri.kfupm.edu.sa.student_dorms.db.entities.Endpoint;
import ri.kfupm.edu.sa.student_dorms.db.impls.EndpointDaoImpl;

import java.util.HashMap;
import java.util.Map;
import java.util.stream.Collectors;

public class SensorsCache {

    final static private Map<String, EndpointCache> CACHE_MAP;

    static {
        // TODO: add data from file when first initialized
        final EndpointDao dao = new EndpointDaoImpl();
        CACHE_MAP = new HashMap<>(dao.findAll().stream().collect(Collectors.toMap(Endpoint::ipAddress, entry -> new EndpointCache(entry.id(), entry.name()))));
    }

    public static void put(@NotNull Endpoint endpoint) {
        CACHE_MAP.put(endpoint.ipAddress(), new EndpointCache(endpoint.id(), endpoint.name()));
    }

    public static void put(String ip, EndpointCache cache) {
        var old = CACHE_MAP.get(ip);
        if (old == null) {
            System.err.println("Received readings that aren't registered with ip: " + ip);
            return;
        }
        cache.setId(old.getId());
        cache.setName(old.getName());
        CACHE_MAP.put(ip, cache);
    }

    public static void remove(String ip) {
        CACHE_MAP.remove(ip);
    }


    public static Map<String, EndpointCache> getCacheMap() {
        return CACHE_MAP;
    }


}
