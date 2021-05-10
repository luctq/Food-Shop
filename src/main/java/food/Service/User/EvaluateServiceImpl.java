package food.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import food.Dao.User.EvaluateDao;
import food.Dto.User.EvaluateDto;

@Service
public class EvaluateServiceImpl {
	@Autowired
	EvaluateDao evaluateDao = new EvaluateDao();
	
	public void InsertContentEvaluate(EvaluateDto evaluate) {
		evaluateDao.InsertContentEvaluate(evaluate);
	}
	
	public List<EvaluateDto> GetDataEvaluate(long id) {
		return evaluateDao.GetDataEvaluate(id);
	}
	public List<EvaluateDto> GetUserEvaluate(long id_product) {
		return evaluateDao.GetUserEvaluate(id_product);
	}
}
