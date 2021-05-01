package food.Service.Admin;

import java.util.List;

import org.springframework.stereotype.Service;

import food.Dto.Admin.AdminProductsDto;
@Service
public interface IAdminProductService {
	public List<AdminProductsDto> GetAllProducts();
	public int addProduct(AdminProductsDto product);
}
