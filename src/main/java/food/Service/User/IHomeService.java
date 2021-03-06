package food.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import food.Dto.User.ProductsDto;
import food.Entity.User.Categorys;
import food.Entity.User.Menus;
import food.Entity.User.Slides;
@Service
public interface IHomeService {
	@Autowired
	public List<Slides> GetDataSlide();
	
	@Autowired
	public List<Categorys> GetDataCategorys();
	
	@Autowired
	public List<Menus> GetDataMenus();
	
	@Autowired
	public List<ProductsDto> GetDataProducts();
}
