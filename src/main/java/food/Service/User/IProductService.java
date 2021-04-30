package food.Service.User;

import java.util.List;

import org.springframework.stereotype.Service;

import food.Dto.User.ProductsDto;
@Service
public interface IProductService {
	public ProductsDto GetProductByID(long id);
	public List<ProductsDto> GetProductByIDCategory(int id);
	public List<ProductsDto> GetAllProducts();
	public List<ProductsDto> GetAllProductsPaginates(int start, int totalProductsPage);
}
