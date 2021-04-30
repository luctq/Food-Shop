package food.Dao.User;

import org.springframework.stereotype.Repository;

import food.Dto.User.EvaluateDto;

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
}
