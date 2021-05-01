package DiamonShop.Service.Admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DiamonShop.Dao.Admin.AdminCategorysDao;
import DiamonShop.Entity.Admin.AdminCategorys;
@Service
public class AdminCategoryServiceImpl implements IAdminCategoryServiceImpl {
	@Autowired
	AdminCategorysDao categorysDao = new AdminCategorysDao();
	public List<AdminCategorys> GetDataCategorys() {
		// TODO Auto-generated method stub
		return categorysDao.GetDataCategorys();
	}
	public int AddCategory(AdminCategorys category) {
		return categorysDao.AddCategory(category);
	}
	public void DeleteCategory(int id) {
	   categorysDao.DeleteCategory(id);
	}
	public AdminCategorys GetCategoryByID(int id) {
		return categorysDao.GetCategoryByID(id);
	}
	public void UpdateCategoryByID(int currentId, AdminCategorys category) {
		categorysDao.UpdateCategoryByID(currentId, category);
	}
	
}
