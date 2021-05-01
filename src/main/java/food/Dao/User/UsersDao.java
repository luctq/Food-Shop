package food.Dao.User;

import java.util.List;

import org.springframework.stereotype.Repository;

import food.Entity.User.MapperUsers;
import food.Entity.User.Users;

@Repository
public class UsersDao extends BaseDao {
	public int AddAccount(Users user) {
		StringBuffer sql = new StringBuffer();
		sql.append("insert ");
		sql.append("into users ");
		sql.append("( ");
		sql.append("	user, ");
		sql.append("	password, ");
		sql.append("	display_name, ");
		sql.append("	address");
		sql.append(") ");
		sql.append("values ");
		sql.append("( ");
		sql.append("	'" + user.getUser() + "', ");
		sql.append("	'" + user.getPassword() + "', ");
		sql.append("	'" + user.getDisplay_name() + "', ");
		sql.append("	'" + user.getAddress()+ "'");
		sql.append(");");
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	}
	public Users GetUserByAcc(Users user) {
		String sql = "select * from users where user = '"+ user.getUser()+"'";
		Users result = _jdbcTemplate.queryForObject(sql, new MapperUsers());
		return result;
	}
	
	public Users GetUserByID(int id) {
		String sql = "select * from users where id = '"+ id +"'";
		Users result = _jdbcTemplate.queryForObject(sql, new MapperUsers());
		return result;
	}
	
	public List<Users> GetAllUsers() {
		String sql = "select * from users";
		List<Users> listUsers = _jdbcTemplate.query(sql, new MapperUsers());
		return listUsers;
	}
	
	public void DeleteUser(int id) {
		String sql = "delete from users where id = " + "	'" + id + "';" ;
	    _jdbcTemplate.execute(sql);  
	}
	public void UpdateUserByID(int currentID, Users user) {
		StringBuffer  sql = new StringBuffer();
		sql.append("update users ");
		sql.append("set id =" + "	'" + user.getId() + "', ");
		sql.append("user = " + "	'" + user.getUser() + "', ");
		sql.append("password ="+ "	'" + user.getPassword() +"', ");
		sql.append("display_name ="+ "	'" + user.getDisplay_name() +"', ");
		sql.append("address ="+ "	'" + user.getAddress() +"' ");
		sql.append("where id = "  + "	'" + currentID + "';");
		_jdbcTemplate.execute(sql.toString()); 
	}
}
