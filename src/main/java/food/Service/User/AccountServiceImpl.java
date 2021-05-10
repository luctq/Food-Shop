package food.Service.User;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import food.Dao.User.UsersDao;
import food.Entity.User.Users;

@Service
public class AccountServiceImpl implements IAccountService {

	@Autowired
	UsersDao usersDao = new UsersDao();
	public int AddAccount(Users user) {
		// TODO Auto-generated method stub
		user.setPassword(BCrypt.hashpw(user.getPassword(), BCrypt.gensalt(12)));
		return usersDao.AddAccount(user);
	}
	
	public Users CheckAccount(Users user) {
		String password = user.getPassword();
		user = usersDao.GetUserByAcc(user);
		if (user != null) {
			if (BCrypt.checkpw(password, user.getPassword())) {
				return user;
			} else {
				return null;
			}
		}
		return null;
	}
	
	public boolean checkAccExist(Users user) {
		user = usersDao.GetUserByAcc(user);
		if (user != null) {
			return true;
		} else {
			return false;
		}
	}
	
}