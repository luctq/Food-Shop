package food.Controller.Admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import food.Entity.Admin.Admin;
import food.Service.Admin.AdminService;
@Controller
public class EditAdminController extends BaseAdminController {
	@Autowired
	AdminService adminService = new AdminService();
	private int currentId;
	@RequestMapping(value = "/quan-tri/sua-quan-tri{id}")
	public ModelAndView EditCate(@PathVariable int id) {
		currentId = id;
		_mvShare.addObject("admin", adminService.GetAdminByID(id));
		_mvShare.setViewName("admin/editAdmin");
		return _mvShare;
	}
	@RequestMapping(value = "/quan-tri/huy-sua-quan-tri")
	public ModelAndView cancelEditCate() {
		_mvShare.setViewName("redirect:quan-li-quan-tri");
		return _mvShare;
	}
	@RequestMapping(value = "/quan-tri/cap-nhat-quan-tri", method = RequestMethod.POST)
	public ModelAndView UpdateEditCate(@ModelAttribute("admin") Admin admin) {
		adminService.UpdateAdminByID(currentId, admin);
		_mvShare.setViewName("redirect:quan-li-quan-tri");
		return _mvShare;
	}
}
