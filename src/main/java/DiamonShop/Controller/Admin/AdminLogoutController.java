package DiamonShop.Controller.Admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminLogoutController extends BaseAdminController {
	@RequestMapping(value = "/quan-tri/dang-xuat")
	public ModelAndView Logout() {
		AdminHomePageController.login = false;
		_mvShare.setViewName("redirect:dang-nhap");
		return _mvShare;
	}
}
