package food.Controller.Admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import food.Service.Admin.AdminService;
@Controller
public class AdminController extends BaseAdminController {
	@Autowired
	private AdminService adminService = new AdminService();
	
	@RequestMapping(value = { "/quan-tri/quan-li-quan-tri"} )
	public ModelAndView view() {
		if (AdminHomePageController.login == false) {
			_mvShare.setViewName("redirect: dang-nhap");
			return _mvShare;
		}
		_mvShare.addObject("adminlist", adminService.GetAllAdmins());
		_mvShare.setViewName("admin/admin");
		return _mvShare;
	}
	@RequestMapping(value = "/quan-tri/xoa-admin{id}")
	public ModelAndView DeleteAdmin(@PathVariable int id) {
		adminService.DeleteAdmin(id);
		_mvShare.addObject("adminlist", adminService.GetAllAdmins());
		return _mvShare;
	}
}
