package food.Service.Admin;

import org.springframework.stereotype.Service;

import food.Entity.Admin.Admin;
@Service
public interface ILoginService {
	public Admin CheckAccount(Admin admin);
}
