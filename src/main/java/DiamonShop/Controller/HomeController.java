package DiamonShop.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import DiamonShop.Service.HomeImplService;

@Controller
public class HomeController {
	@Autowired
	HomeImplService homeService;
	
	@RequestMapping(value = {"/", "/trang-chu"})
	public ModelAndView Index() {
		ModelAndView mv = new ModelAndView("user/index");
		mv.addObject("slides", homeService.GetDataSlide());
		mv.addObject("categorys", homeService.GetDataCategorys());
		return mv;
	}
}
