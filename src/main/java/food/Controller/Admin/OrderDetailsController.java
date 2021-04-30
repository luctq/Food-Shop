package food.Controller.Admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class OrderDetailsController extends BaseAdminController {
	@RequestMapping(value = { "/quan-tri/chi-tiet-don-hang"} )
	public ModelAndView view() {
		if (AdminHomePageController.login == false) {
			_mvShare.setViewName("redirect: dang-nhap");
			return _mvShare;
		}
		_mvShare.setViewName("admin/showOrderDetail");
		return _mvShare;
	}
}
