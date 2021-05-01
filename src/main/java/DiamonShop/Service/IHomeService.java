package DiamonShop.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DiamonShop.Dto.ProductsDto;
import DiamonShop.Entity.Categorys;
import DiamonShop.Entity.Menus;
import DiamonShop.Entity.Slides;
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
