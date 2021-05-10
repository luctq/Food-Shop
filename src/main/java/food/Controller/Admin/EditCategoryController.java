package food.Controller.Admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import food.Entity.Admin.AdminCategorys;
import food.Service.Admin.AdminCategoryServiceImpl;
@Controller
public class EditCategoryController extends BaseAdminController {
	@Autowired
	AdminCategoryServiceImpl categoryService;
	private int currentId;
	@RequestMapping(value = "/quan-tri/sua-the-loai{id}")
	public ModelAndView EditCate(@PathVariable int id) {
		currentId = id;
		_mvShare.addObject("catelist", categoryService.GetCategoryByID(id));
		_mvShare.setViewName("admin/editCate");
		return _mvShare;
	}
	@RequestMapping(value = "/quan-tri/huy-sua-the-loai")
	public ModelAndView cancelEditCate() {
		_mvShare.setViewName("redirect:the-loai");
		return _mvShare;
	}
	@RequestMapping(value = "/quan-tri/cap-nhat-the-loai", method = RequestMethod.POST)
	public ModelAndView UpdateEditCate(@ModelAttribute("category") AdminCategorys category) {
		categoryService.UpdateCategoryByID(currentId, category);
		_mvShare.setViewName("redirect:the-loai");
		return _mvShare;
	}
}
