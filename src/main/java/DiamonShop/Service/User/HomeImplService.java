package DiamonShop.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DiamonShop.Dao.User.CategorysDao;
import DiamonShop.Dao.User.MenusDao;
import DiamonShop.Dao.User.ProductsDao;
import DiamonShop.Dao.User.SlidesDao;
import DiamonShop.Dto.User.ProductsDto;
import DiamonShop.Entity.User.Categorys;
import DiamonShop.Entity.User.Menus;
import DiamonShop.Entity.User.Slides;
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
