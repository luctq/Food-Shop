package food.Entity.Admin;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;


public class MapperAdminCategories implements RowMapper<AdminCategories> {
	public AdminCategories mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		AdminCategories categories = new AdminCategories();
		categories.setId(rs.getInt("id"));
		categories.setName(rs.getString("name"));
		categories.setDescripttion(rs.getString("description"));
		return categories;
	}

}