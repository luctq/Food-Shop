package food.Dto.User;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class ProductsDtoMapper implements RowMapper<ProductsDto> {
	public ProductsDto mapRow(ResultSet rs, int rowNum) throws SQLException {
		ProductsDto products = new ProductsDto();
		products.setId_products(rs.getLong("id_products"));
		products.setId_category(rs.getInt("id_category"));
		products.setName(rs.getString("name"));
		products.setPrice(rs.getDouble("price"));
		products.setSale(rs.getInt("sale"));
		products.setTitle(rs.getString("title"));
		products.setHighlight(rs.getBoolean("highlight"));
		products.setNew_product(rs.getBoolean("new_product"));
		products.setDetails(rs.getString("details"));
		products.setImg(rs.getString("img"));
		products.setCreated_at(rs.getDate("created_at"));
		products.setUpdated_at(rs.getDate("updated_at"));
		return products;
	}
}
