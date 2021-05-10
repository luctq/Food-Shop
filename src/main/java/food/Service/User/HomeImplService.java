package food.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import food.Dao.User.CategorysDao;
import food.Dao.User.MenusDao;
import food.Dao.User.ProductsDao;
import food.Dao.User.SlidesDao;
import food.Dto.User.ProductsDto;
import food.Entity.User.Categorys;
import food.Entity.User.Menus;
import food.Entity.User.Slides;
@Service
public class HomeImplService implements IHomeService {
	@Autowired
	private SlidesDao slidesDao;
	@Autowired
	private CategorysDao categorysDao;
	@Autowired
	private MenusDao menusDao;
	@Autowired
	private ProductsDao productsDao;
	
	
	public List<Slides> GetDataSlide() {
		// TODO Auto-generated method stub
		return slidesDao.GetDataSlide();
	}
	
	public List<Categorys> GetDataCategorys() {
		// TODO Auto-generated method stub
		return categorysDao.GetDataCategorys();
	}
	
	public List<Menus> GetDataMenus() {
		// TODO Auto-generated method stub
		return menusDao.GetDataMenus();
	}

	public List<ProductsDto> GetDataProducts() {
		List<ProductsDto> listProducts = productsDao.GetDataProducts();
		return listProducts;
	}
}
