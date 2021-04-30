package food.Service.Admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import food.Dao.User.UsersDao;
import food.Entity.User.Users;
@Service
public class UserService implements IUserService {
	@Autowired
	private UsersDao userDao = new UsersDao();
	public List<Users> GetAllUsers() {
		return userDao.GetAllUsers();
	}
	public void DeleteUser(int id) {
		userDao.DeleteUser(id);
	}
	
	public Users GetUserByID(int id) {
		return userDao.GetUserByID(id);
	}
	public void UpdateUserByID(int currentId, Users user) {
		userDao.UpdateUserByID(currentId, user);
	}
}
