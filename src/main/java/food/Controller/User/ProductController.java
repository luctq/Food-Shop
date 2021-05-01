package food.Controller.User;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import food.Dto.User.EvaluateDto;
import food.Dto.User.PaginatesDto;
import food.Entity.User.Users;
import food.Service.Admin.UserService;
import food.Service.User.EvaluateServiceImpl;
import food.Service.User.IProductService;
import food.Service.User.PaginateServiceImpl;
@Controller
public class ProductController extends BaseController {
	@Autowired
	private UserService userService;
	@Autowired
	private IProductService _productService;
	@Autowired
	private PaginateServiceImpl paginateService;
	@Autowired
	private EvaluateServiceImpl evaluateService;
	
	@RequestMapping(value = { "/chi-tiet-san-pham{id}" })
	public ModelAndView Index(@PathVariable long id) {
		_mvShare.setViewName("user/productdetails");
		_mvShare.addObject("evaluates", evaluateService.GetDataEvaluate(id));
		_mvShare.addObject("product", _productService.GetProductByID(id));
		return _mvShare;
	}
	@RequestMapping(value = "/save{id}", method = RequestMethod.POST )
	public String Save(HttpSession session, @ModelAttribute EvaluateDto evaluate, @PathVariable long id) {
			//Users user = (Users) session.getAttribute("LoginInfo");
			evaluate.setId_user(1);
			evaluate.setId_product(id);
			evaluateService.InsertContentEvaluate(evaluate);
			return "redirect: chi-tiet-san-pham" + id;
	}
	@RequestMapping(value = { "/san-pham" })
	public ModelAndView Product() {
		int totalData = _productService.GetAllProducts().size();
		PaginatesDto paginateInfo = paginateService.GetInfoPaginates(totalData, 9, 1);
		_mvShare.addObject("paginateInfo", paginateInfo);
		_mvShare.addObject("products", _productService.GetAllProductsPaginates(paginateInfo.getStart(), 9));
		_mvShare.addObject("categorys", _homeService.GetDataCategorys());
		_mvShare.setViewName("user/products");
		return _mvShare;
	}
	@RequestMapping(value = "/san-pham{currentPage}")
	public ModelAndView Product(@PathVariable int currentPage) {
		_mvShare.setViewName("user/products/list_view");
		int totalData = _productService.GetAllProducts().size();
		PaginatesDto paginateInfo = paginateService.GetInfoPaginates(totalData, 9, currentPage);
		_mvShare.addObject("paginateInfo", paginateInfo);
		_mvShare.addObject("products", _productService.GetAllProductsPaginates(paginateInfo.getStart(), 9));
		_mvShare.addObject("categorys", _homeService.GetDataCategorys());
		_mvShare.setViewName("user/products");
		return _mvShare;
	}
}
