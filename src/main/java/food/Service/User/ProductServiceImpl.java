package food.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import food.Dao.User.ProductsDao;
import food.Dto.User.ProductsDto;
@Service
public class ProductServiceImpl implements IProductService {
	@Autowired
	ProductsDao productDao = new ProductsDao();
	
	public ProductsDto GetProductByID(long id) {
		ProductsDto product = productDao.GetProductByID(id);
		return product;
	}

	public List<ProductsDto> GetProductByIDCategory(int id) {
		return productDao.GetAllProductsByID(id);
	}

	public List<ProductsDto> GetAllProducts() {
		return productDao.GetAllProducts();
	}

	public List<ProductsDto> GetAllProductsPaginates(int start, int totalProductsPage) {
		return productDao.GetAllProductsPaginates(start, totalProductsPage);
	}

	public List<ProductsDto> GetAllProductsSearch(String search) {
		return productDao.GetAllProductsSearch(search);
	}
	public List<ProductsDto> GetAllProductsPaginatesSortAscPrice(int start, int totalPage) {
		return productDao.GetAllProductsPaginatesSortAscPrice(start, totalPage);
	}
	public List<ProductsDto> GetAllProductsPaginatesSortDescPrice(int start, int totalPage) {
		return productDao.GetAllProductsPaginatesSortDescPrice(start, totalPage);
	}
	public List<ProductsDto> GetAllProductsPaginatesSortName(int start, int totalPage) {
		return productDao.GetAllProductsPaginatesSortName(start, totalPage);
	}
}
