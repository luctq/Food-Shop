package food.Controller.Admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import food.Dto.Admin.AdminProductsDto;
import food.Service.Admin.AdminCategoryServiceImpl;
import food.Service.Admin.AdminProductServiceImpl;
@Controller
public class AddProductController extends BaseAdminController {
	@Autowired
	private AdminCategoryServiceImpl categoryService = new AdminCategoryServiceImpl();
	@Autowired
	private AdminProductServiceImpl productService = new AdminProductServiceImpl();
	@RequestMapping(value = "/quan-tri/them-san-pham")
	public ModelAndView addProduct() {
		_mvShare.addObject("catelist", categoryService.GetDataCategorys());
		_mvShare.setViewName("admin/addProduct");
		return _mvShare;
	}
	@RequestMapping(value = "/quan-tri/huy-them-san-pham")
	public ModelAndView cancelAddProduct() {
		_mvShare.setViewName("redirect:danh-sach-san-pham");
		return _mvShare;
	}
	@RequestMapping(value = "quan-tri/them-product", method = RequestMethod.POST )
	public ModelAndView CreatAcc(@ModelAttribute("product") AdminProductsDto product) {
		int count = productService.addProduct(product);
		if (count > 0) {
			_mvShare.addObject("status", "them thanh cong");
		} else {
			_mvShare.addObject("errorStatus", "them that bai");
		}
		_mvShare.setViewName("redirect:them-san-pham");
		return _mvShare;
	}
	
}
