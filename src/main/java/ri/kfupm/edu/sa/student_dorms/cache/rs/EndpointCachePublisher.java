package ri.kfupm.edu.sa.student_dorms.cache.rs;

import io.reactivex.rxjava3.subjects.PublishSubject;
import ri.kfupm.edu.sa.student_dorms.cache.entities.EndpointCache;

import java.util.Map;

public class EndpointCachePublisher {
    private static final PublishSubject<Map.Entry<Long, EndpointCache>> PUBLISHER = PublishSubject.create();

    public static PublishSubject<Map.Entry<Long, EndpointCache>> getPublisher() {
        return PUBLISHER;
    }
}
