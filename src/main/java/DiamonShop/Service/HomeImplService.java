package DiamonShop.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DiamonShop.Dao.CategorysDao;
import DiamonShop.Dao.SlidesDao;
import DiamonShop.Entity.Categorys;
import DiamonShop.Entity.Slides;
@Service
public class HomeImplService implements IHomeService {
	@Autowired
	private SlidesDao slidesDao;
	@Autowired
	private CategorysDao categorysDao;
	
	public List<Slides> GetDataSlide() {
		// TODO Auto-generated method stub
		return slidesDao.GetDataSlide();
	}

	public List<Categorys> GetDataCategorys() {
		// TODO Auto-generated method stub
		return categorysDao.GetDataCategorys();
	}
}
