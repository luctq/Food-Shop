package food.Service.User;

import java.util.HashMap;
import org.springframework.stereotype.Service;

import food.Dto.User.CartDto;
import food.Entity.User.Bills;

@Service
public interface IBillsService {
	public int AddBills(Bills bill);
	
	public void AddBillsDetail(HashMap<Long, CartDto> carts);
}
