package food.Service.Admin;

import java.util.List;

import org.springframework.stereotype.Service;

import food.Entity.Admin.AdminCategorys;

@Service
public interface IAdminCategoryServiceImpl {
	
	public List<AdminCategorys> GetDataCategorys();
	
	public int AddCategory(AdminCategorys category);
	
	public void DeleteCategory(int id);
	
	public AdminCategorys GetCategoryByID(int id);
	
	public void UpdateCategoryByID(int currentId, AdminCategorys category);
	
}
