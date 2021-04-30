package food.Service.User;

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
}
