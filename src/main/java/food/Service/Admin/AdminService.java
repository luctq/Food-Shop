package food.Service.Admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import food.Dao.Admin.AdminDao;
import food.Dto.Admin.AdminProductsDto;
import food.Entity.Admin.Admin;
@Service
public class AdminService implements IAdminService {
	@Autowired 
	private AdminDao adminDao = new AdminDao();
	
	public List<Admin> GetAllAdmins() {
		return adminDao.GetAllAdmins();
	}

	public int AddAdmin(Admin admin) {
		// TODO Auto-generated method stub
		return adminDao.AddAdmin(admin);
	}

	public void DeleteAdmin(int id) {
		adminDao.DeleteAdmin(id);
		
	}

	public Admin GetAdminByID(int id) {
		return adminDao.GetAdminByID(id);
	}

	public void UpdateAdminByID(int currentID, Admin admin) {
		adminDao.UpdateAdminByID(currentID, admin);
	}
	
	
}
