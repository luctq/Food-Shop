package DiamonShop.Service.Admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DiamonShop.Dao.Admin.AdminDao;
import DiamonShop.Entity.Admin.Admin;
@Service
public class LoginServiceImpl implements ILoginService {
	@Autowired
	AdminDao adminDao = new AdminDao();
	
	public Admin CheckAccount(Admin admin) {
		String password = admin.getPassword();
		admin = adminDao.GetAdminByAcc(admin);
		if (admin != null) {
			if (password.equals(admin.getPassword())) {
				return admin;
			} else {
				return null;
			}
		}
		return null;
	}
	
}
