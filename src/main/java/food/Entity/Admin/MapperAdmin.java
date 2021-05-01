package food.Entity.Admin;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperAdmin implements RowMapper<Admin>{

	public Admin mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		Admin admin = new Admin();
		admin.setId(rs.getInt("id"));
		admin.setUsername(rs.getString("username"));
		admin.setPassword(rs.getString("password"));
		admin.setName(rs.getString("name"));
		return admin;
	}

}
