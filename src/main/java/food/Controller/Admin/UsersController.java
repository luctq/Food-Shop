package food.Controller.Admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import food.Service.Admin.UserService;
@Controller
public class UsersController extends BaseAdminController {
	@Autowired
	private UserService userService = new UserService();
	@RequestMapping(value = { "/quan-tri/quan-li-nguoi-dung"} )
	public ModelAndView view() {
		if (AdminHomePageController.login == false) {
			_mvShare.setViewName("redirect: dang-nhap");
			return _mvShare;
		}
		_mvShare.addObject("userlist", userService.GetAllUsers());
		_mvShare.setViewName("admin/user");
		return _mvShare;
	}
	@RequestMapping(value = "/quan-tri/xoa-user{id}")
	public ModelAndView DeleteAdmin(@PathVariable int id) {
		userService.DeleteUser(id);
		_mvShare.addObject("userlist", userService.GetAllUsers());
		return _mvShare;
	}
}
