package ri.kfupm.edu.sa.studentdorms.db.impl;

import ri.kfupm.edu.sa.studentdorms.db.dao.EndpointDao;
import ri.kfupm.edu.sa.studentdorms.db.entity.Endpoint;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import static ri.kfupm.edu.sa.studentdorms.db.DB.getConnection;

public class EndpointDaoImpl implements EndpointDao {

    @Override
    public void insert(final Endpoint endpoint) {
        final String query = "INSERT INTO ENDPOINTS VALUES (default, ?, ?)";
        try (final PreparedStatement preparedStatement = getConnection().prepareStatement(query)) {
            preparedStatement.setString(1, endpoint.name());
            preparedStatement.setString(2, endpoint.ipAddress());
            preparedStatement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<Endpoint> findAll() {
        final String query = "SELECT * FROM ENDPOINTS";
        try (final PreparedStatement preparedStatement = getConnection().prepareStatement(query)) {
            final ResultSet set = preparedStatement.executeQuery();
            set.next();
//            return new Endpoint(set.getInt(1), set.getString(2), set.getString(3));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public Endpoint findById(int id) {
        return null;
    }

}
