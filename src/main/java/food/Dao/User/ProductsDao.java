package food.Dao.User;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import food.Dto.User.ProductsDto;
import food.Dto.User.ProductsDtoMapper;
@Repository
public class ProductsDao extends BaseDao {
	private final boolean Yes = true;
	private final boolean No = false;
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
	private String SqlProducts(boolean new_product, boolean highLight) {
		StringBuffer sql = SqlString();
		if(highLight) {
			sql.append("where p.highlight = true ");
		}
		if(new_product) {
			sql.append("and p.new_product = true ");
		}
		sql.append("group by p.id, c.id_products ");
		sql.append("order by rand() ");
		if (highLight) {
			sql.append("limit 9");
		}
		if (new_product) {
			sql.append("limit 12");
		}
	
		return sql.toString();
	}
	private StringBuffer SqlProductsByID(int id) {
		StringBuffer sql = SqlString();
		sql.append("where 1 = 1 ");
		sql.append("and id_category = " + id + " ");
		
		return sql;
	}
	private String SqlProductsPaginates(int id, int start, int totalPage) {
		StringBuffer sql = SqlProductsByID(id);
		sql.append("limit " + start + ", " + totalPage);
		return sql.toString();
	}
	private String SqlProductByID(long id) {
		StringBuffer sql = SqlString();
		sql.append("where 1 = 1 ");
		sql.append("and p.id =  " + id + " ");
		sql.append("limit 1 ");
		return sql.toString();
	}
	public ProductsDto GetProductByID(long id) {
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
		sql.append("products as p ");
		sql.append("where p.id = " + id + ";");
		ProductsDto product = _jdbcTemplate.queryForObject(sql.toString(), new ProductsDtoMapper());
		return product;
	} 
	public List<ProductsDto> GetAllProductsSearch(String search) {
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
		sql.append("products as p ");
		sql.append("where p.name like '%" + search + "%';");
		List<ProductsDto> products = new ArrayList<ProductsDto>();
		products = _jdbcTemplate.query(sql.toString(), new ProductsDtoMapper());
		return products;
	} 
 	public List<ProductsDto> GetDataProducts() {
		String sql = SqlString().toString();
		List<ProductsDto> listProducts = _jdbcTemplate.query(sql, new ProductsDtoMapper());
		return listProducts;
	}
 	public List<ProductsDto> GetAllProductsByID(int id) {
		String sql = SqlProductsByID(id).toString();
		List<ProductsDto> listProducts = _jdbcTemplate.query(sql, new ProductsDtoMapper());
		return listProducts;
	}
	public List<ProductsDto> GetDataProductsPaginates(int id, int start, int totalPage) {
		String sql = SqlProductsPaginates(id, start, totalPage);
		List<ProductsDto> listProducts = _jdbcTemplate.query(sql, new ProductsDtoMapper());
		return listProducts;
	}
	public List<ProductsDto> GetAllProductsPaginates(int start, int totalPage) {
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
		sql.append("products as p ");
		sql.append("limit " + start + ", " + totalPage);
		List<ProductsDto> listProducts = _jdbcTemplate.query(sql.toString(), new ProductsDtoMapper());
		return listProducts;
	}
	public ProductsDto FindProductByID(long id) {
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
		sql.append("products as p ");
		sql.append("where p.id = " + id + ";");
		ProductsDto product = _jdbcTemplate.queryForObject(sql.toString(), new ProductsDtoMapper());
		return product;
	} 
	public List<ProductsDto> GetAllProducts() {
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
		List<ProductsDto> listProducts = _jdbcTemplate.query(sql.toString(), new ProductsDtoMapper());
		return listProducts;
	}
	public List<ProductsDto> GetAllProductsPaginatesSortAscPrice(int start, int totalPage) {
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
		sql.append("products as p ");
		sql.append("order by p.price ");
		sql.append("limit " + start + ", " + totalPage + ";");
		List<ProductsDto> listProducts = _jdbcTemplate.query(sql.toString(), new ProductsDtoMapper());
		return listProducts;
	}
	public List<ProductsDto> GetAllProductsPaginatesSortDescPrice(int start, int totalPage) {
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
		sql.append("products as p ");
		sql.append("order by p.price desc ");
		sql.append("limit " + start + ", " + totalPage + ";");
		List<ProductsDto> listProducts = _jdbcTemplate.query(sql.toString(), new ProductsDtoMapper());
		return listProducts;
	}
	public List<ProductsDto> GetAllProductsPaginatesSortName(int start, int totalPage) {
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
		sql.append("products as p ");
		sql.append("order by p.name ");
		sql.append("limit " + start + ", " + totalPage + ";");
		List<ProductsDto> listProducts = _jdbcTemplate.query(sql.toString(), new ProductsDtoMapper());
		return listProducts;
	}
}
