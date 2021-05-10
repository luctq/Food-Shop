package food.Controller.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import food.Service.User.EvaluateServiceImpl;
import food.Service.User.ProductServiceImpl;
import jdk.nashorn.internal.ir.RuntimeNode.Request;

@Controller
public class SearchController extends BaseController {
	
	@Autowired
	ProductServiceImpl _productService;
	@Autowired 
	EvaluateServiceImpl evaluateService;
	
	@RequestMapping(value = "/tim-kiem", method = RequestMethod.GET)
	public ModelAndView search() {
		_mvShare.clear();
		_mvShare.setViewName("user/search");
		return _mvShare;
	}
	@RequestMapping(value = "/tim-kiem", method = RequestMethod.POST)
	public ModelAndView Search(@ModelAttribute("search") String search) {
		_mvShare.clear();
		_mvShare.addObject("product", _productService.GetAllProductsSearch(search));
		_mvShare.setViewName("user/search");
		return _mvShare;
	}
}
