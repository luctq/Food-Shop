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
import food.Service.User.ProductServiceImpl;
@Controller
public class ProductController extends BaseController {
	private int type = 1;
	@Autowired
	private UserService userService;
	@Autowired
	private ProductServiceImpl _productService;
	@Autowired
	private PaginateServiceImpl paginateService;
	@Autowired
	private EvaluateServiceImpl evaluateService;
	
	@RequestMapping(value = { "/chi-tiet-san-pham{id}" })
	public ModelAndView Index(HttpSession session, @PathVariable long id) {
		_mvShare.setViewName("user/productdetails");
		int totalData = _productService.GetAllProducts().size();
		PaginatesDto paginateInfo = paginateService.GetInfoPaginates(totalData, 6, 1);
		_mvShare.addObject("paginateInfo", paginateInfo);
		_mvShare.addObject("products", _productService.GetAllProductsPaginates(paginateInfo.getStart(), 6));
		_mvShare.addObject("categorys", _homeService.GetDataCategorys());
		_mvShare.addObject("evaluates", evaluateService.GetUserEvaluate(id));
		_mvShare.addObject("product", _productService.GetProductByID(id));
		return _mvShare;
	}
	@RequestMapping(value = "/save{id}", method = RequestMethod.POST )
	public String Save(HttpSession session, @ModelAttribute EvaluateDto evaluate, @PathVariable long id) {
			Users user = (Users) session.getAttribute("LoginInfo");
			evaluate.setId_user(user.getId());
			evaluate.setId_product(id);
			evaluateService.InsertContentEvaluate(evaluate);
			return "redirect: chi-tiet-san-pham" + id;
	}
	@RequestMapping(value = { "/san-pham" }, method = RequestMethod.GET)
	public ModelAndView Product() {
		int totalData = _productService.GetAllProducts().size();
		PaginatesDto paginateInfo = paginateService.GetInfoPaginates(totalData, 8, 1);
		_mvShare.addObject("paginateInfo", paginateInfo);
		_mvShare.addObject("products", _productService.GetAllProductsPaginates(paginateInfo.getStart(), 8));
		_mvShare.addObject("categorys", _homeService.GetDataCategorys());
		_mvShare.setViewName("user/products");
		return _mvShare;
	}
	@RequestMapping(value = "/san-pham", method = RequestMethod.POST)
	public ModelAndView Product(@ModelAttribute("typeSort") int typeSort) {
		type = typeSort;
		int totalData = _productService.GetAllProducts().size();
		PaginatesDto paginateInfo = paginateService.GetInfoPaginates(totalData, 8, 1);
		_mvShare.addObject("paginateInfo", paginateInfo);
		switch (typeSort) {
		case 1:
			_mvShare.addObject("products", _productService.GetAllProductsPaginates(paginateInfo.getStart(), 8));
			_mvShare.addObject("type", "Mac dinh");
			_mvShare.addObject("typeValue", typeSort);
			break;
		case 2:
			_mvShare.addObject("products", _productService.GetAllProductsPaginatesSortAscPrice(paginateInfo.getStart(), 8));
			_mvShare.addObject("type", "Sap xep theo gia tien (tang dan)");
			_mvShare.addObject("typeValue", typeSort);
			break;
		case 3:
			_mvShare.addObject("products", _productService.GetAllProductsPaginatesSortDescPrice(paginateInfo.getStart(), 8));
			_mvShare.addObject("type", "Sap xep theo gia tien (giam dan)");
			_mvShare.addObject("typeValue", typeSort);
			break;
		case 4:
			_mvShare.addObject("products", _productService.GetAllProductsPaginatesSortName(paginateInfo.getStart(), 8));
			_mvShare.addObject("type", "Sap xep theo ten");
			_mvShare.addObject("typeValue", typeSort);
			break;
		}
		_mvShare.addObject("categorys", _homeService.GetDataCategorys());
		_mvShare.setViewName("user/products");
		return _mvShare;
	}
	@RequestMapping(value = "/san-pham{currentPage}")
	public ModelAndView ProductPaginate(@PathVariable int currentPage) {
		_mvShare.setViewName("user/products/list_view");
		int totalData = _productService.GetAllProducts().size();
		PaginatesDto paginateInfo = paginateService.GetInfoPaginates(totalData, 8, currentPage);
		_mvShare.addObject("paginateInfo", paginateInfo);
		switch (type) {
		case 1:
			_mvShare.addObject("products", _productService.GetAllProductsPaginates(paginateInfo.getStart(), 8));
			break;
		case 2:
			_mvShare.addObject("products", _productService.GetAllProductsPaginatesSortAscPrice(paginateInfo.getStart(), 8));
			break;
		case 3:
			_mvShare.addObject("products", _productService.GetAllProductsPaginatesSortDescPrice(paginateInfo.getStart(), 8));
			break;
		case 4:
			_mvShare.addObject("products", _productService.GetAllProductsPaginatesSortName(paginateInfo.getStart(), 8));
			break;
		}
		_mvShare.addObject("categorys", _homeService.GetDataCategorys());
		_mvShare.setViewName("user/products");
		return _mvShare;
	}
}
