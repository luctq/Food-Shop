package food.Controller.User;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import food.Dto.User.CartDto;
import food.Entity.User.Bills;
import food.Entity.User.Users;
import food.Service.User.BillsServiceImpl;
import food.Service.User.CartServiceImpl;

@Controller
public class CartController extends BaseController {
	
    @Autowired
	private CartServiceImpl cartService = new CartServiceImpl();
    
    @Autowired
    private BillsServiceImpl billsService = new BillsServiceImpl();
    
	@RequestMapping(value = "/gio-hang")
	public ModelAndView Index() {
		_mvShare.setViewName("user/list_cart");
		return _mvShare;
	}
	
	@RequestMapping(value = "AddCart/{id}")
	public String AddCart(HttpServletRequest request, HttpSession session, @PathVariable long id) {
		HashMap<Long, CartDto> cart = (HashMap<Long, CartDto>)session.getAttribute("Cart");
		if (cart == null) {
			cart = new HashMap<Long, CartDto>();
		}
		cart = cartService.AddCart(id, cart);
		session.setAttribute("Cart", cart);
		session.setAttribute("TotalQuantyCart", cartService.TotalQuanty(cart));
		session.setAttribute("TotalPriceCart", cartService.TotalPrice(cart));
		return "redirect:"+ request.getHeader("Referer");
	}
	
	@RequestMapping(value = "EditCart/{id}/{quanty}")
	public String EditCart(HttpServletRequest request, HttpSession session, @PathVariable long id, @PathVariable int quanty) {
		HashMap<Long, CartDto> cart = (HashMap<Long, CartDto>)session.getAttribute("Cart");
		if (cart == null) {
			cart = new HashMap<Long, CartDto>();
			
		}
		cart = cartService.EditCart(id, quanty, cart);
		session.setAttribute("Cart", cart);
		session.setAttribute("TotalQuantyCart", cartService.TotalQuanty(cart));
		session.setAttribute("TotalPriceCart", cartService.TotalPrice(cart));
		return "redirect:"+ request.getHeader("Referer");
	}
	
	@RequestMapping(value = "DeleteCart/{id}")
	public String DeleteCart(HttpServletRequest request, HttpSession session, @PathVariable long id) {
		HashMap<Long, CartDto> cart = (HashMap<Long, CartDto>)session.getAttribute("Cart");
		if (cart == null) {
			cart = new HashMap<Long, CartDto>();
			
		}
		cart = cartService.DeleteCart(id, cart);
		session.setAttribute("Cart", cart);
		session.setAttribute("TotalQuantyCart", cartService.TotalQuanty(cart));
		session.setAttribute("TotalPriceCart", cartService.TotalPrice(cart));
		return "redirect:"+request.getHeader("Referer");
	}
	
	@RequestMapping(value = "/checkout", method = RequestMethod.GET)
	public ModelAndView CheckOut(HttpServletRequest request, HttpSession session) {
		if(UserController.login == false) {
			_mvShare.setViewName("redirect:dang-nhap");
			return _mvShare;
		} else {
			_mvShare.setViewName("user/checkout");
			Bills bills = new Bills();
			Users loginInfo = (Users)session.getAttribute("LoginInfo");
			if (loginInfo != null) {
				bills.setAddress(loginInfo.getAddress());
				bills.setDisplay_name(loginInfo.getDisplay_name());
				bills.setUser(loginInfo.getUser());
			}
			_mvShare.addObject("bills", bills);
			return _mvShare;
		}
	}
	
	@RequestMapping(value = "/checkout", method = RequestMethod.POST)
	public String CheckOutBill(HttpServletRequest request, HttpSession session, @ModelAttribute("bills") Bills bills) {
		HashMap<Long, CartDto> cart = (HashMap<Long, CartDto>)session.getAttribute("Cart");
		bills.setTotal(cartService.TotalPrice(cart));
		bills.setQuanty(cartService.TotalQuanty(cart));
		if (billsService.AddBills(bills) > 0) {
			billsService.AddBillsDetail(cart);
			return "redirect:gio-hang";
		}
		return "redirect:gio-hang";
	}
}