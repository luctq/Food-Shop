package DiamonShop.Service.Admin;

import org.springframework.stereotype.Service;

import DiamonShop.Entity.Admin.Admin;
@Service
public interface ILoginService {
	public Admin CheckAccount(Admin admin);
}
