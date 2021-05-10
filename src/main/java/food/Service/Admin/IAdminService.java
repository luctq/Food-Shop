package food.Service.Admin;

import java.util.List;

import org.springframework.stereotype.Service;

import food.Dto.Admin.AdminProductsDto;
import food.Entity.Admin.Admin;
@Service
public interface IAdminService {
	public List<Admin> GetAllAdmins();
	public int AddAdmin(Admin admin);
	public void DeleteAdmin(int id);
	public Admin GetAdminByID(int id);
	public void UpdateAdminByID(int currentID, Admin admin);
}
