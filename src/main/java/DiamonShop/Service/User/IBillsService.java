package DiamonShop.Service.User;

import java.util.HashMap;
import org.springframework.stereotype.Service;
import DiamonShop.Dto.User.CartDto;
import DiamonShop.Entity.Bills;

@Service
public interface IBillsService {
	public int AddBills(Bills bill);
	
	public void AddBillsDetail(HashMap<Long, CartDto> carts);
}
