package food.Service.Admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import food.Dao.Admin.AdminCategoriesDao;
import food.Entity.Admin.AdminCategories;
@Service
public class AdminCategoryServiceImpl implements IAdminCategoryServiceImpl {
	@Autowired
	AdminCategoriesDao categoriesDao = new AdminCategoriesDao();
	public List<AdminCategories> GetDataCategories() {
		// TODO Auto-generated method stub
		return categoriesDao.GetDataCategories();
	}
	public int AddCategory(AdminCategories category) {
		return categoriesDao.AddCategory(category);
	}
	public void DeleteCategory(int id) {
	   categoriesDao.DeleteCategory(id);
	}
	public AdminCategories GetCategoryByID(int id) {
		return categoriesDao.GetCategoryByID(id);
	}
	public void UpdateCategoryByID(int currentId, AdminCategories category) {
		categoriesDao.UpdateCategoryByID(currentId, category);
	}
	
}
