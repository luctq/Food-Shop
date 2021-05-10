package food.Controller.Admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import food.Service.User.BillsServiceImpl;
import food.Service.User.ProductServiceImpl;

@Controller
public class OrderDetailsController extends BaseAdminController {
	@Autowired
	BillsServiceImpl billService;
	@Autowired
	ProductServiceImpl productService;
	@RequestMapping(value = { "/quan-tri/chi-tiet-don-hang"} )
	public ModelAndView view() {
		if (AdminHomePageController.login == false) {
			_mvShare.setViewName("redirect: dang-nhap");
			return _mvShare;
		}
		_mvShare.addObject("orderedlist",  billService.GetDataBillDetails());
		_mvShare.setViewName("admin/showOrderDetail");
		return _mvShare;
	}
}
