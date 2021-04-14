package DiamonShop.Dao.User;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import DiamonShop.Entity.User.MapperMenus;
import DiamonShop.Entity.User.Menus;
@Repository
public class MenusDao extends BaseDao {
	public List<Menus> GetDataMenus(){	
		List<Menus> list = new ArrayList<Menus>();
		String sql = "SELECT * FROM `menus`";
		list = _jdbcTemplate.query(sql, new MapperMenus());
		return list;
	}
}
