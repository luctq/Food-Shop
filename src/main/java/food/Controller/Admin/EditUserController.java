package food.Controller.Admin;

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
public class EditUserController extends BaseAdminController {
	@Autowired
	UserService userService = new UserService();
	private int currentId;
	@RequestMapping(value = "/quan-tri/sua-nguoi-dung{id}")
	public ModelAndView EditCate(@PathVariable int id) {
		currentId = id;
		_mvShare.addObject("user", userService.GetUserByID(id));
		_mvShare.setViewName("admin/editUser");
		return _mvShare;
	}
	@RequestMapping(value = "/quan-tri/huy-sua-nguoi-dung")
	public ModelAndView cancelEditCate() {
		_mvShare.setViewName("redirect:quan-li-nguoi-dung");
		return _mvShare;
	}
	@RequestMapping(value = "/quan-tri/cap-nhat-nguoi-dung", method = RequestMethod.POST)
	public ModelAndView UpdateEditCate(@ModelAttribute("user") Users user) {
		userService.UpdateUserByID(currentId, user);
		_mvShare.setViewName("redirect:quan-li-nguoi-dung");
		return _mvShare;
	}
}
