package food.Controller.Admin;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class AdminHomePageController extends BaseAdminController {
	public static boolean login = false;
	@RequestMapping(value = { "/quan-tri/trang-chu"} )
	public ModelAndView Login() {
		if (login == false) {
			_mvShare.setViewName("redirect: dang-nhap");
			return _mvShare;
		}
		_mvShare.setViewName("admin/index");
		return _mvShare;
	}
}
