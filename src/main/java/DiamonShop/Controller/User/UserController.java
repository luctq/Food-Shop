package DiamonShop.Controller.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import DiamonShop.Entity.User.Users;
import DiamonShop.Service.User.AccountServiceImpl;
@Controller
public class UserController extends BaseController {
	
	@Autowired
	AccountServiceImpl accountService = new AccountServiceImpl();
	 
	@RequestMapping(value = "/dang-ky", method = RequestMethod.GET )
	public ModelAndView Register() {
		_mvShare.clear();
		_mvShare.setViewName("user/account/register");
		_mvShare.addObject("user", new Users());
		return _mvShare;
	}
	@RequestMapping(value = "/dang-ky", method = RequestMethod.POST )
	public ModelAndView CreatAcc(@ModelAttribute("user") Users user) {
		if (accountService.checkAccExist(user)) {
			_mvShare.addObject("status", "Tài khoản đã tồn tại");
			_mvShare.setViewName("user/account/register");
			return _mvShare;
		}
		int count = accountService.AddAccount(user);
		if (count > 0) {
			_mvShare.addObject("status", "Đăng ký tài khoản thành công");
		} else {
			_mvShare.addObject("errorStatus", "Đăng ký tài khoản thất bại");
		}
		_mvShare.setViewName("user/account/register");
		return _mvShare;
	}
	@RequestMapping(value = "/dang-nhap", method = RequestMethod.POST )
	public ModelAndView Login(HttpSession session, @ModelAttribute("user") Users user) {
		user = accountService.CheckAccount(user);
		if (user != null) {
			_mvShare.setViewName("redirect:trang-chu");
			session.setAttribute("LoginInfo", user);
			return _mvShare;
		} else {
			_mvShare.addObject("statusLogin", "Đăng nhập thất bại");
			_mvShare.setViewName("user/account/register");
			return _mvShare;
		}
	}
	@RequestMapping(value = "/dang-xuat", method = RequestMethod.GET )
	public String Logout(HttpSession session, HttpServletRequest request) {
		session.removeAttribute("LoginInfo");
		return "redirect:" + request.getHeader("Referer");
	}
	public boolean checkAccExist(Users user) {
		return accountService.checkAccExist(user);
	}
}
