package DiamonShop.Entity.Admin;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import DiamonShop.Entity.User.Categorys;


public class MapperAdminCategorys implements RowMapper<AdminCategorys> {
	public AdminCategorys mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		AdminCategorys categorys = new AdminCategorys();
		categorys.setId(rs.getInt("id"));
		categorys.setName(rs.getString("name"));
		categorys.setDescripttion(rs.getString("description"));
		return categorys;
	}

}