package DiamonShop.Controller.Admin;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import DiamonShop.Entity.Admin.Admin;
import DiamonShop.Service.Admin.LoginServiceImpl;

@Controller
public class LoginController extends BaseAdminController {
	@Autowired
	LoginServiceImpl loginService = new LoginServiceImpl();

	@RequestMapping(value = "/quan-tri/dang-nhap" )
	public ModelAndView Login() {
		_mvShare.setViewName("admin/login");
		return _mvShare;
	}

	@RequestMapping(value = "quan-tri/dang-nhap-quan-tri", method = RequestMethod.POST)
	public ModelAndView login(@ModelAttribute("admin") Admin admin, HttpSession session) {
		admin = loginService.CheckAccount(admin);
		if (admin != null) {
			AdminHomePageController.login = true;
			_mvShare.setViewName("redirect:trang-chu");
		} else {
			_mvShare.setViewName("redirect:dang-nhap-quan-tri");
		}
		return _mvShare;
	}
}