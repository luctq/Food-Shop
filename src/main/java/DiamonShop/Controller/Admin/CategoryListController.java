package DiamonShop.Controller.Admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import DiamonShop.Service.Admin.AdminCategoryServiceImpl;

@Controller
public class CategoryListController extends BaseAdminController {
	@Autowired
	AdminCategoryServiceImpl categoryService;
	
	@RequestMapping(value = "/quan-tri/the-loai")
	public ModelAndView Catergory() {
		_mvShare.addObject("catelist", categoryService.GetDataCategorys());
		_mvShare.setViewName("admin/showCate");
		return _mvShare;
	}
	@RequestMapping(value = "/quan-tri/xoa-cate{id}")
	public ModelAndView DeleteCategory(@PathVariable int id) {
		categoryService.DeleteCategory(id);
		_mvShare.addObject("catelist", categoryService.GetDataCategorys());
		return _mvShare;
	}
}
