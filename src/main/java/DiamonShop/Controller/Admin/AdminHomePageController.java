package DiamonShop.Controller.Admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class AdminHomePageController extends BaseAdminController {
	@RequestMapping(value = "/quan-tri/trang-chu")
	public ModelAndView Login() {
		_mvShare.setViewName("admin/editOrder");
		return _mvShare;
	}
}
