package food.Controller.User;

import javax.servlet.http.HttpSession;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import food.Entity.User.Users;
import food.Service.Admin.UserService;
@Controller
public class ProfileController extends BaseController {
	@Autowired 
	UserService userService;
	private int currentId;
	@RequestMapping(value = {"/trang-ca-nhan{id}"})
	public ModelAndView Profile(@PathVariable int id) {
		currentId = id;
		_mvShare.setViewName("user/profile");
		return _mvShare;
	}
	@RequestMapping(value = "/sua-trang-ca-nhan", method = RequestMethod.POST)
	public ModelAndView UpdateEditCate(HttpSession session,@ModelAttribute("user") Users user) {
		userService.UpdateUser(currentId, user);
		_mvShare.setViewName("redirect:trang-chu");
		return _mvShare;
	}
	@RequestMapping(value = "/doi-mat-khau", method = RequestMethod.POST)
	public ModelAndView UpdateEditCate(HttpSession session, @ModelAttribute("oldPassword") String oldPassword, @ModelAttribute("newPassword") String newPassword) {
		Users user = (Users) session.getAttribute("LoginInfo");
		if (BCrypt.checkpw(oldPassword, user.getPassword())) {
			newPassword = BCrypt.hashpw(newPassword, BCrypt.gensalt(12));
			userService.UpdatePassword(currentId, newPassword);
			_mvShare.setViewName("redirect:trang-chu");
			return _mvShare;
		} else {
			_mvShare.setViewName("redirect: trang-ca-nhan" + user.getId());
			return _mvShare;
		}
	}
}
