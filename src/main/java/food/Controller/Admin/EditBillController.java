package food.Controller.Admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import food.Entity.User.Bills;
import food.Service.User.BillsServiceImpl;

@Controller
public class EditBillController extends BaseAdminController {
	@Autowired
	BillsServiceImpl billService;
	@RequestMapping(value = "/quan-tri/sua-don-hang{id}")
	public ModelAndView EditBill(@PathVariable int id) {
		_mvShare.addObject("order", billService.GetDataBillByID(id));
		_mvShare.setViewName("admin/editOrder");
		return _mvShare;
	}

	@RequestMapping(value = "/quan-tri/huy-sua-don-hang")
	public ModelAndView cancel() {
		_mvShare.setViewName("redirect:don-hang");
		return _mvShare;
	}
	@RequestMapping(value = "/quan-tri/cap-nhat-don-hang", method = RequestMethod.POST)
	public ModelAndView UpdateEditCate(@ModelAttribute("bill") Bills bill) {
		billService.updateBillByID(bill);
		_mvShare.setViewName("redirect:don-hang");
		return _mvShare;
	}
}
