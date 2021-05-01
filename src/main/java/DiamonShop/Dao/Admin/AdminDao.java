package DiamonShop.Dao.Admin;

import org.springframework.stereotype.Repository;

import DiamonShop.Dao.User.BaseDao;
import DiamonShop.Entity.Admin.Admin;
import DiamonShop.Entity.Admin.MapperAdmin;
@Repository
public class AdminDao extends BaseDao {
	public Admin GetAdminByAcc(Admin admin) {
		String sql = "select * from admin where username = '"+ admin.getUsername()+"'";
		Admin result = _jdbcTemplate.queryForObject(sql, new MapperAdmin());
		return result;
	}
}
