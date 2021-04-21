package DiamonShop.Controller.Admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class UsersController extends BaseAdminController {
	@RequestMapping(value = { "/quan-tri/quan-li-nguoi-dung"} )
	public ModelAndView view() {
		if (AdminHomePageController.login == false) {
			_mvShare.setViewName("redirect: dang-nhap");
			return _mvShare;
		}
		_mvShare.setViewName("admin/user");
		return _mvShare;
	}
}
