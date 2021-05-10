package food.Dto.User;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class EvaluateDtoMapper implements RowMapper<EvaluateDto> {
	public EvaluateDto mapRow(ResultSet rs, int rowNum) throws SQLException {
		EvaluateDto evaluate = new EvaluateDto();
		evaluate.setId_evaluate(rs.getInt("id_evaluate"));
		evaluate.setId_product(rs.getInt("id_product"));
		evaluate.setId_user(rs.getInt("id_user"));
		evaluate.setContent(rs.getString("content"));
		evaluate.setNum_star(rs.getInt("num_star"));
		evaluate.setId(rs.getLong("id"));
		evaluate.setUser(rs.getString("user"));
		evaluate.setPassword(rs.getString("password"));
		evaluate.setDisplay_name(rs.getString("display_name"));
		evaluate.setAddress(rs.getString("address"));
		evaluate.setPhone(rs.getString("phone"));
		evaluate.setAvatar(rs.getString("avatar"));
		return evaluate;
	}
}
