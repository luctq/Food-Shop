package food.Service.Admin;

import java.util.List;

import org.springframework.stereotype.Service;

import food.Entity.User.Users;
@Service
public interface IUserService {
	public List<Users> GetAllUsers();
	public void DeleteUser(int id);
	public Users GetUserByID(int id);
	public void UpdateUserByID(int currentId, Users user);
}
