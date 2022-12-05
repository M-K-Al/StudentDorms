package ri.kfupm.edu.sa.student_dorms.db.impls;

import ri.kfupm.edu.sa.student_dorms.db.daos.EndpointDao;
import ri.kfupm.edu.sa.student_dorms.db.entities.Endpoint;
import ri.kfupm.edu.sa.student_dorms.db.rs.EndpointPublisher;
import ri.kfupm.edu.sa.student_dorms.db.rs.EndpointPublisher.EndpointModification;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import static java.sql.Statement.RETURN_GENERATED_KEYS;
import static ri.kfupm.edu.sa.student_dorms.db.DB.getConnection;
import static ri.kfupm.edu.sa.student_dorms.db.rs.EndpointPublisher.EndpointModification.Modification.DELETION;
import static ri.kfupm.edu.sa.student_dorms.db.rs.EndpointPublisher.EndpointModification.Modification.INSERT;

public class EndpointDaoImpl implements EndpointDao {

    @Override
    public long insert(final Endpoint endpoint) {
        final String query = "INSERT INTO ENDPOINTS VALUES (default, ?, ?)";
        try (final PreparedStatement preparedStatement = getConnection().prepareStatement(query, RETURN_GENERATED_KEYS)) {
            preparedStatement.setString(1, endpoint.name());
            preparedStatement.setString(2, endpoint.ipAddress());
            preparedStatement.executeUpdate();
            var result = preparedStatement.getGeneratedKeys();
            if (result.next()) {
                var id = result.getLong(1);
                EndpointPublisher.getPublisher().onNext(new EndpointModification(INSERT, new Endpoint(id, endpoint.name(), endpoint.ipAddress())));
                return id;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -1;
    }

    @Override
    public boolean delete(int id) {
        final String query = "DELETE FROM ENDPOINTS WHERE ENDPOINT_ID=?";
        try (final PreparedStatement preparedStatement = getConnection().prepareStatement(query)) {
            preparedStatement.setInt(1, id);
            if (preparedStatement.executeUpdate() < 1) return false;
            EndpointPublisher.getPublisher().onNext(new EndpointModification(DELETION, new Endpoint(id)));
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public long findId(String ip) {
        final String query = "SELECT ENDPOINT_ID FROM ENDPOINTS WHERE ENDPOINT_IP_ADDRESS=?";
        try (final PreparedStatement preparedStatement = getConnection().prepareStatement(query)) {
            preparedStatement.setString(1, ip);
            var result = preparedStatement.executeQuery();
            if (result.next()) return result.getInt(1);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -1;
    }

    @Override
    public List<Endpoint> findAll() {
        final String query = "SELECT * FROM ENDPOINTS";
        try (final PreparedStatement preparedStatement = getConnection().prepareStatement(query)) {
            final ResultSet set = preparedStatement.executeQuery();
            final List<Endpoint> list = new ArrayList<>();
            while (set.next()) list.add(new Endpoint(set.getInt(1), set.getString(2), set.getString(3)));
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public Endpoint findById(int id) {
        final String query = "SELECT * FROM ENDPOINTS WHERE ENDPOINT_ID=?";
        try (final PreparedStatement preparedStatement = getConnection().prepareStatement(query)) {
            preparedStatement.setInt(1, id);
            final ResultSet set = preparedStatement.executeQuery();
            set.next();
            return new Endpoint(set.getInt(1), set.getString(2), set.getString(3));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

}
