package food.Service.User;

import java.util.List;

import org.springframework.stereotype.Service;

import food.Dto.User.ProductsDto;
@Service
public interface ICategoryService {
	public List<ProductsDto> GetAllProductsByID(int id);
	public List<ProductsDto> GetDataProductsPaginates(int id, int start, int totalPage);
}
