package food.Service.Admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import food.Dao.Admin.AdminProductsDao;
import food.Dto.Admin.AdminProductsDto;
@Service
public class AdminProductServiceImpl implements IAdminProductService {
	@Autowired
	AdminProductsDao productsDao = new AdminProductsDao();
	public List<AdminProductsDto> GetAllProducts() {
		return productsDao.GetAllProducts();
	}
	public int addProduct(AdminProductsDto product) {
		return productsDao.addProduct(product);
	}

}
