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
	@RequestMapping(value = "/quan-tri")
	public ModelAndView Login() {
		_mvShare.setViewName("admin/login");
		return _mvShare;
	}

	
	@RequestMapping(value = "/quan-tri-dang-nhap", method = RequestMethod.POST)
	public ModelAndView Login(HttpSession session, @ModelAttribute("admin") Admin admin) {
		admin = loginService.CheckAccount(admin);
		if (admin != null) {
			_mvShare.setViewName("redirect:trang-chu");
			session.setAttribute("adminLogin", admin);
			return _mvShare;
		} else {
			_mvShare.addObject("statusAdminLogin", "Đăng nhập thất bại");
			_mvShare.setViewName("user/account/register");
			return _mvShare;
		}
	}
}