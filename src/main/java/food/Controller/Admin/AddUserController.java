package food.Controller.Admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import food.Entity.User.Users;
import food.Service.User.AccountServiceImpl;
@Controller
public class AddUserController extends BaseAdminController {
	@Autowired
	AccountServiceImpl accountService = new AccountServiceImpl();
	
	@RequestMapping(value = "/quan-tri/them-nguoi-dung")
	public ModelAndView addAdmin() {
		_mvShare.setViewName("admin/addUser");
		return _mvShare;
	}
	
	@RequestMapping(value = "/quan-tri/huy-them-nguoi-dung")
	public ModelAndView cancelAddAdmin() {
		_mvShare.setViewName("redirect:quan-li-nguoi-dung");
		return _mvShare;
	}
	@RequestMapping(value = "quan-tri/them-user", method = RequestMethod.POST )
	public ModelAndView add(@ModelAttribute("user") Users user) {
		int count =	accountService.AddAccount(user);
		if (count > 0) {
			_mvShare.addObject("status", "them thanh cong");
		} else {
			_mvShare.addObject("errorStatus", "them that bai");
		}
		_mvShare.setViewName("redirect:them-nguoi-dung");
		return _mvShare;
	}
}
