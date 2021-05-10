package food.Controller.Admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import food.Service.Admin.AdminProductServiceImpl;

@Controller
public class ProductsListController extends BaseAdminController {
	@Autowired
	AdminProductServiceImpl productService = new AdminProductServiceImpl();
	@RequestMapping(value = { "/quan-tri/danh-sach-san-pham"} )
	public ModelAndView view() {
		if (AdminHomePageController.login == false) {
			_mvShare.setViewName("redirect: dang-nhap");
			return _mvShare;
		}
		_mvShare.addObject("productlist", productService.GetAllProducts());
		_mvShare.setViewName("admin/showProduct");
		return _mvShare;
	}
	@RequestMapping(value = "/quan-tri/xoa-san-pham{id}")
	public ModelAndView DeleteCategory(@PathVariable long id) {
		productService.DeleteProduct(id);
		_mvShare.addObject("productlist", productService.GetAllProducts());
		_mvShare.setViewName("admin/showProduct");
		return _mvShare;
	}
}
