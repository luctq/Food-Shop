package food.Dao.User;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import food.Dto.User.EvaluateDto;
import food.Dto.User.EvaluateDtoMapper;

@Repository
public class EvaluateDao extends BaseDao {
	public void InsertContentEvaluate(EvaluateDto evaluate) {
		StringBuffer  sql = new StringBuffer();
		sql.append("INSERT INTO evaluate ");
		sql.append("(id_product, ");
		sql.append(" id_user, ");
		sql.append(" content, ");
		sql.append(" num_star) ");
		sql.append("VALUES ");
		sql.append("('" + evaluate.getId_product() + "', ");
		sql.append(" '"+ evaluate.getId_user() + "', ");
		sql.append(" '"+ evaluate.getContent() + "', ");
		sql.append(" '" + evaluate.getNum_star()+ "');");
		_jdbcTemplate.execute(sql.toString());
	}
	public List<EvaluateDto> GetDataEvaluate(long id) {
		StringBuffer  sql = new StringBuffer();
		sql.append("select * from evaluate where id_product = '" + id + "';");
		List<EvaluateDto> list = new ArrayList<EvaluateDto>();
		list = _jdbcTemplate.query(sql.toString(), new EvaluateDtoMapper());
		return list;
	}
}
