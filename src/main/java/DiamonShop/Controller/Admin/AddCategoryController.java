package DiamonShop.Controller.Admin;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import DiamonShop.Entity.Admin.AdminCategorys;
import DiamonShop.Service.Admin.AdminCategoryServiceImpl;

@Controller
public class AddCategoryController extends BaseAdminController {
	@Autowired
	AdminCategoryServiceImpl categoryService;
	
	@RequestMapping(value = "/quan-tri/them-the-loai")
	public ModelAndView addCate() {
		_mvShare.setViewName("admin/addCate");
		return _mvShare;
	}
	
	@RequestMapping(value = "/quan-tri/huy-them-the-loai")
	public ModelAndView cancelAddCate() {
		_mvShare.setViewName("redirect:the-loai");
		return _mvShare;
	}
	@RequestMapping(value = "quan-tri/them-cate", method = RequestMethod.POST )
	public ModelAndView CreatAcc(@ModelAttribute("category") AdminCategorys category) {
		int count = categoryService.AddCategory(category);
		if (count > 0) {
			_mvShare.addObject("status", "them thanh cong");
		} else {
			_mvShare.addObject("errorStatus", "them that bai");
		}
		_mvShare.setViewName("redirect:them-the-loai");
		return _mvShare;
	}
}	
