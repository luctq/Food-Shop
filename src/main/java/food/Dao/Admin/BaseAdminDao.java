package food.Dao.Admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

public class BaseAdminDao {
	@Autowired
    public JdbcTemplate _jdbcTemplate;
}
