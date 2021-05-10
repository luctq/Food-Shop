package food.Controller.Admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import food.Dto.Admin.AdminProductsDto;
import food.Entity.User.Users;
import food.Service.Admin.AdminCategoryServiceImpl;
import food.Service.Admin.AdminProductServiceImpl;
@Controller
public class EditProductController extends BaseAdminController {
	@Autowired
	private AdminCategoryServiceImpl categoryService = new AdminCategoryServiceImpl();
	@Autowired
	private AdminProductServiceImpl productService = new AdminProductServiceImpl();
	
	@RequestMapping(value = "/quan-tri/sua-san-pham{id}")
	public ModelAndView EditProduct(@PathVariable long id) {
		_mvShare.addObject("catelist", categoryService.GetDataCategorys());
		_mvShare.addObject("product", productService.GetProductByID(id));
		_mvShare.setViewName("admin/editProduct");
		return _mvShare;
	}
	@RequestMapping(value = "/quan-tri/huy-sua-san-pham")
	public ModelAndView cancelEditCate() {
		_mvShare.setViewName("redirect:danh-sach-san-pham");
		return _mvShare;
	}
	@RequestMapping(value = "/quan-tri/cap-nhat-san-pham", method = RequestMethod.POST)
	public ModelAndView UpdateEditCate(@ModelAttribute("product") AdminProductsDto product) {
		productService.UpdateProductByID(product);
		_mvShare.setViewName("redirect:danh-sach-san-pham");
		return _mvShare;
	}
}
