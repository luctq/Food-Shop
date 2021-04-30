package food.Controller.Admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class NewController extends BaseAdminController {
	@RequestMapping(value = { "/quan-tri/tin-tuc"} )
	public ModelAndView view() {
		if (AdminHomePageController.login == false) {
			_mvShare.setViewName("redirect: dang-nhap");
			return _mvShare;
		}
		_mvShare.setViewName("admin/showNew");
		return _mvShare;
	}
}
