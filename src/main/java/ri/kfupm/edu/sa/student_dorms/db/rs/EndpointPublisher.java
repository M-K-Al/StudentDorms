package ri.kfupm.edu.sa.student_dorms.db.rs;

import io.reactivex.rxjava3.subjects.PublishSubject;
import ri.kfupm.edu.sa.student_dorms.db.entities.Endpoint;

public abstract class EndpointPublisher {
    private static final PublishSubject<EndpointModification> PUBLISHER = PublishSubject.create();

    public static PublishSubject<EndpointModification> getPublisher() {
        return PUBLISHER;
    }

    public record EndpointModification(Modification modification, Endpoint endpoint) {

        public enum Modification {

            INSERT,

            DELETION
        }
    }

}
