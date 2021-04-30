package food.Controller.Admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import food.Entity.Admin.Admin;
import food.Service.Admin.AdminCategoryServiceImpl;
import food.Service.Admin.AdminService;

@Controller
public class AddAdminController extends BaseAdminController {
	@Autowired
	AdminService adminService = new AdminService();
	
	@RequestMapping(value = "/quan-tri/them-quan-tri")
	public ModelAndView addAdmin() {
		_mvShare.setViewName("admin/addAdmin");
		return _mvShare;
	}
	
	@RequestMapping(value = "/quan-tri/huy-them-quan-tri")
	public ModelAndView cancelAddAdmin() {
		_mvShare.setViewName("redirect:quan-li-quan-tri");
		return _mvShare;
	}
	@RequestMapping(value = "quan-tri/them-admin", method = RequestMethod.POST )
	public ModelAndView add(@ModelAttribute("admin") Admin admin) {
		int count =	adminService.AddAdmin(admin);
		if (count > 0) {
			_mvShare.addObject("status", "them thanh cong");
		} else {
			_mvShare.addObject("errorStatus", "them that bai");
		}
		_mvShare.setViewName("redirect:them-quan-tri");
		return _mvShare;
	}
}
