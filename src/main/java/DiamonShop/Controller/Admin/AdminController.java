package DiamonShop.Controller.Admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class AdminController extends BaseAdminController {
	@RequestMapping(value = { "/quan-tri/quan-li-quan-tri"} )
	public ModelAndView view() {
		if (AdminHomePageController.login == false) {
			_mvShare.setViewName("redirect: dang-nhap");
			return _mvShare;
		}
		_mvShare.setViewName("admin/admin");
		return _mvShare;
	}
}
