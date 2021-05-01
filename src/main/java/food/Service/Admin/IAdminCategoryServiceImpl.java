package food.Service.Admin;

import java.util.List;

import org.springframework.stereotype.Service;

import food.Entity.Admin.AdminCategories;

@Service
public interface IAdminCategoryServiceImpl {
	
	public List<AdminCategories> GetDataCategories();
	
	public int AddCategory(AdminCategories category);
	
	public void DeleteCategory(int id);
	
	public AdminCategories GetCategoryByID(int id);
	
	public void UpdateCategoryByID(int currentId, AdminCategories category);
	
}
