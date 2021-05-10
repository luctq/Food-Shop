package food.Service.User;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import food.Dao.User.BillsDao;
import food.Dto.User.CartDto;
import food.Entity.User.BillDetail;
import food.Entity.User.Bills;

@Service
public class BillsServiceImpl implements IBillsService {
	@Autowired
	private BillsDao billsDao;
	
	public int AddBills(Bills bill) {
	   return billsDao.AddBills(bill);
	}

	public void AddBillsDetail(HashMap<Long, CartDto> carts) {
		long idBills = billsDao.GetIDLastBills();
		for (Map.Entry<Long, CartDto> itemCart : carts.entrySet()) {
			BillDetail billDetail = new BillDetail();
			billDetail.setId_bills(idBills);
			billDetail.setId_product(itemCart.getValue().getProduct().getId_products());
			billDetail.setQuanty(itemCart.getValue().getQuanty());
			billDetail.setTotal(itemCart.getValue().getTotalPrice());
			billsDao.AddBillsDetail(billDetail);
		}
	}
	
	public List<Bills> GetDataBills() {
		return billsDao.GetDataBills();
	}
	public Bills GetDataBillByID(int id) {
		return billsDao.GetDataBillByID(id);
	}
	public List<BillDetail> GetDataBillDetails() {
		return billsDao.GetDataBillDetails();
	}
	public void updateBillByID(Bills bill) {
		billsDao.updateBillByID(bill);
	}
	public void DeleteBill(int id) {
		billsDao.DeleteBill(id);
	}
	public void DeleteBillDetail(int id) {
		billsDao.DeleteBillDetail(id);
	}
	
}
