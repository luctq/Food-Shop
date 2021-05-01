package food.Dto.Admin;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperAdminProductsDto implements RowMapper<AdminProductsDto> {
	public AdminProductsDto mapRow(ResultSet rs, int rowNum) throws SQLException {
		AdminProductsDto products = new AdminProductsDto();
		products.setId_products(rs.getLong("id_products"));
		products.setId_category(rs.getInt("id_category"));
		products.setName(rs.getString("name"));
		products.setPrice(rs.getDouble("price"));
		products.setSale(rs.getInt("sale"));
		products.setTitle(rs.getString("title"));
		products.setHighlight(rs.getInt("highlight"));
		products.setNew_product(rs.getInt("new_product"));
		products.setDetails(rs.getString("details"));
		products.setImg(rs.getString("img"));
		products.setCreated_at(rs.getDate("created_at"));
		products.setUpdated_at(rs.getDate("updated_at"));
		products.setStatus(rs.getInt("status"));
		return products;
	}
}
