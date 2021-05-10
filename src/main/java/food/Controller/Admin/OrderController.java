package food.Controller.Admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import food.Service.User.BillsServiceImpl;

@Controller
public class OrderController extends BaseAdminController {
	@Autowired
	BillsServiceImpl billService;
	
	@RequestMapping(value = { "/quan-tri/don-hang"} )
	public ModelAndView view() {
		if (AdminHomePageController.login == false) {
			_mvShare.setViewName("redirect: dang-nhap");
			return _mvShare;
		}
		_mvShare.addObject("order", billService.GetDataBills());
		_mvShare.setViewName("admin/showOrder");
		return _mvShare;
	}
	@RequestMapping(value = "/quan-tri/xoa-don-hang{id}")
	public ModelAndView DeleteCategory(@PathVariable int id) {
		billService.DeleteBill(id);
		billService.DeleteBillDetail(id);
		_mvShare.addObject("order", billService.GetDataBills());
		return _mvShare;
	}
}
