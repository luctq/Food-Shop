package food.Dao.Admin;

import java.util.List;

import org.springframework.stereotype.Repository;

import food.Dao.User.BaseDao;
import food.Entity.Admin.Admin;
import food.Entity.Admin.AdminCategorys;
import food.Entity.Admin.MapperAdmin;
import food.Entity.User.Users;
@Repository
public class AdminDao extends BaseDao {
	public Admin GetAdminByAcc(Admin admin) {
		String sql = "select * from admin where username = '"+ admin.getUsername()+"'";
		Admin result = _jdbcTemplate.queryForObject(sql, new MapperAdmin());
		return result;
	}
	public List<Admin> GetAllAdmins() {
		String sql = "select * from admin;";
		List<Admin> listAdmin = _jdbcTemplate.query(sql, new MapperAdmin());
		return listAdmin;
	}
	public int AddAdmin(Admin admin) {
			StringBuffer sql = new StringBuffer();
			sql.append("insert ");
			sql.append("into admin ");
			sql.append("( ");
			sql.append("	username, ");
			sql.append("	password, ");
			sql.append("	name");
			sql.append(") ");
			sql.append("values ");
			sql.append("( ");
			sql.append("	'" + admin.getUsername() + "', ");
			sql.append("	'" + admin.getPassword() + "', ");
			sql.append("	'" + admin.getName() + "'");
			sql.append(");");
			int insert = _jdbcTemplate.update(sql.toString());
			return insert;
	}
	public void DeleteAdmin(int id) {
		String sql = "delete from admin where id = " + "	'" + id + "';" ;
	    _jdbcTemplate.execute(sql);  
	}
	public Admin GetAdminByID(int id) {
		String sql = "select * from admin where id = '"+ id +"'";
		Admin result = _jdbcTemplate.queryForObject(sql, new MapperAdmin());
		return result;
	}
	public void UpdateAdminByID(int currentID, Admin admin) {
		StringBuffer  sql = new StringBuffer();
		sql.append("update admin ");
		sql.append("set id =" + "	'" + admin.getId() + "', ");
		sql.append("username = " + "	'" + admin.getUsername() + "', ");
		sql.append("password ="+ "	'" + admin.getPassword() +"', ");
		sql.append("name ="+ "	'" + admin.getName() +"' ");
		sql.append("where id = "  + "	'" + currentID + "';");
		_jdbcTemplate.execute(sql.toString()); 
	}
}

