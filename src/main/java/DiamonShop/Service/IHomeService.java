package DiamonShop.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import DiamonShop.Entity.Categorys;
import DiamonShop.Entity.Slides;

public interface IHomeService {
	@Autowired
	public List<Slides> GetDataSlide();
	@Autowired
	public List<Categorys> GetDataCategorys();
}
