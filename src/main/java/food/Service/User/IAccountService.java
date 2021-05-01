package food.Service.User;

import org.springframework.stereotype.Service;

import food.Entity.User.Users;

@Service
public interface IAccountService {
	public int AddAccount(Users user);
	
	public Users CheckAccount(Users user);
}
