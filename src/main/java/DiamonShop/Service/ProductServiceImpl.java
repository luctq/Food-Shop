package DiamonShop.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DiamonShop.Dao.ProductsDao;
import DiamonShop.Dto.ProductsDto;
@Service
public class ProductServiceImpl implements IProductService {
	@Autowired
	ProductsDao productDao = new ProductsDao();
	
	public ProductsDto GetProductByID(long id) {
		List<ProductsDto> listProducts = productDao.GetProductByID(id);
		return listProducts.get(0);
	}

}
