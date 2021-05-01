package food.Dao.Admin;

import java.util.List;

import org.springframework.stereotype.Repository;

import food.Dto.Admin.AdminProductsDto;
import food.Dto.Admin.MapperAdminProductsDto;
@Repository
public class AdminProductsDao extends BaseAdminDao {
	private StringBuffer SqlString() {
		StringBuffer  sql = new StringBuffer();
		sql.append("select ");
		sql.append("p.id as id_products");
		sql.append(", p.id_category");
		sql.append(", p.name");
		sql.append(", p.price");
		sql.append(", p.sale");
		sql.append(", p.title");
		sql.append(", p.highlight");
		sql.append(", p.new_product");
		sql.append(", p.details");
		sql.append(", p.img");
		sql.append(", p.created_at");
		sql.append(", p.updated_at ");
		sql.append(", p.status ");
		sql.append("from ");
		sql.append("products as p;");
		return sql;
	}
	public List<AdminProductsDto> GetAllProducts() {
		String sql = SqlString().toString();
		List<AdminProductsDto> listProduct = _jdbcTemplate.query(sql, new MapperAdminProductsDto());
		return listProduct;
	}
	public int addProduct(AdminProductsDto product) {
		StringBuffer  sql = new StringBuffer();
		sql.append("insert into products ");
		sql.append("(id_category, name, price, sale, title, highlight, new_product, details, created_at, status, img) ");
		sql.append("values ");
		sql.append("(");
		sql.append("	'" + product.getId_category() + "', ");
		sql.append("	'" + product.getName() + "', ");
		sql.append("	'" + product.getPrice() + "', ");
		sql.append("	'" + product.getSale() + "', ");
		sql.append("	'" + product.getTitle() + "', ");
		sql.append("	'" + product.isHighlight() + "', ");
		sql.append("	'" + product.isNew_product() + "', ");
		sql.append("	'" + product.getDetails() + "', ");
		sql.append("	'" + product.getCreated_at() + "', ");
		sql.append("	'" + product.isStatus() + "', ");
		sql.append("	'" + product.getImg() + "',");
		sql.append(");");
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	}
}
