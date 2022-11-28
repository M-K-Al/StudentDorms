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

    final static private Map<Long, EndpointCache> cache;
    final static private Map<String, Long> idCache;

    static {
        // TODO: add data from file when first initialized
        final EndpointDao dao = new EndpointDaoImpl();
        cache = new HashMap<>(dao.findAll().stream().collect(Collectors.toMap(Endpoint::id, entry -> new EndpointCache(entry.ipAddress(), entry.name()))));
        idCache = new HashMap<>(cache.entrySet().stream().collect(Collectors.toMap(entry -> entry.getValue().ip(), Map.Entry::getKey)));
    }

    public static void put(long key, @NotNull Endpoint value) {
        cache.put(key, new EndpointCache(value.ipAddress(), value.name()));
    }

    public static void put(long key, EndpointCache value) {
        cache.put(key, value);
    }

    public static void remove(long key) {
        cache.remove(key);
    }

    public static EndpointCache get(long key) {
        return cache.get(key);
    }

    public static Map<Long, EndpointCache> getCache() {
        return cache;
    }

    public static long getId(@NotNull String ip) {
        return idCache.get(ip);
    }
}
