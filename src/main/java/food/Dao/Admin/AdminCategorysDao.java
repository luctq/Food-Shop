package food.Dao.Admin;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import food.Entity.Admin.AdminCategorys;
import food.Entity.Admin.MapperAdminCategorys;

@Repository
public class AdminCategorysDao extends BaseAdminDao {
	public int AddCategory(AdminCategorys category) {
		StringBuffer  sql = new StringBuffer();
		sql.append("insert into categorys ");
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
	public List<AdminCategorys> GetDataCategorys() {
		List<AdminCategorys> list = new ArrayList<AdminCategorys>();
		String sql = "SELECT * FROM `categorys`";
		list = _jdbcTemplate.query(sql, new MapperAdminCategorys());
		return list;
	}
	public void DeleteCategory(int id) {
		String sql = "delete from categorys where id = " + "	'" + id + "';" ;
	    _jdbcTemplate.execute(sql);  
	}
	public AdminCategorys GetCategoryByID(int id) {
		AdminCategorys category = new AdminCategorys();
		String sql = "select * from categorys where id = "+ "	'" + id + "';" ;
		category = _jdbcTemplate.queryForObject(sql, new MapperAdminCategorys());
		return category;
		
	}
	public void UpdateCategoryByID(int currentID, AdminCategorys category) {
		StringBuffer  sql = new StringBuffer();
		sql.append("update categorys ");
		sql.append("set id =" + "	'" + category.getId() + "', ");
		sql.append("name = " + "	'" + category.getName() + "', ");
		sql.append("parent_id ="+ "	'" + category.getParent_id() +"' ");
		sql.append("where id = "  + "	'" + currentID + "';");
		_jdbcTemplate.execute(sql.toString()); 
	}
}
