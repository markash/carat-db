package za.co.yellowfire.carat.db;

import javax.validation.constraints.NotNull;
import java.util.List;

public interface Dao<T> {
    List<T> retrieve() throws DataAccessException;

    T retrieveById(@NotNull Integer id) throws DataAccessException;
}
