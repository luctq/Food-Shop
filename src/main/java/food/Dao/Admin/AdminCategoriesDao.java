package food.Dao.Admin;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import food.Entity.Admin.AdminCategories;
import food.Entity.Admin.MapperAdminCategories;

@Repository
public class AdminCategoriesDao extends BaseAdminDao {
	public int AddCategory(AdminCategories category) {
		StringBuffer  sql = new StringBuffer();
		sql.append("insert into categories ");
		sql.append("(id,name, parent_id) ");
		sql.append("values ");
		sql.append("(");
		sql.append("	'" + category.getId() + "', ");
		sql.append("	'" + category.getName() + "', ");
		sql.append("	'" + category.getParent_id() + "'");
		sql.append(");");
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	}
	public List<AdminCategories> GetDataCategories() {
		List<AdminCategories> list = new ArrayList<AdminCategories>();
		String sql = "SELECT * FROM `categories`";
		list = _jdbcTemplate.query(sql, new MapperAdminCategories());
		return list;
	}
	public void DeleteCategory(int id) {
		String sql = "delete from categories where id = " + "	'" + id + "';" ;
	    _jdbcTemplate.execute(sql);  
	}
	public AdminCategories GetCategoryByID(int id) {
		AdminCategories category = new AdminCategories();
		String sql = "select * from categories where id = "+ "	'" + id + "';" ;
		category = _jdbcTemplate.queryForObject(sql, new MapperAdminCategories());
		return category;
		
	}
	public void UpdateCategoryByID(int currentID, AdminCategories category) {
		StringBuffer  sql = new StringBuffer();
		sql.append("update categories ");
		sql.append("set id =" + "	'" + category.getId() + "', ");
		sql.append("name = " + "	'" + category.getName() + "', ");
		sql.append("parent_id ="+ "	'" + category.getParent_id() +"' ");
		sql.append("where id = "  + "	'" + currentID + "';");
		_jdbcTemplate.execute(sql.toString()); 
	}
}
