package DiamonShop.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DiamonShop.Dto.User.ProductsDto;
import DiamonShop.Entity.User.Categorys;
import DiamonShop.Entity.User.Menus;
import DiamonShop.Entity.User.Slides;
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
