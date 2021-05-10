package food.Entity.User;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperBillDetail implements RowMapper<BillDetail> {
	public BillDetail mapRow(ResultSet rs, int rowNum) throws SQLException {
		BillDetail billdetail = new BillDetail();
		billdetail.setId(rs.getLong("id"));
		billdetail.setId_product(rs.getLong("id_product"));
		billdetail.setId_bills(rs.getLong("id_bills"));
		billdetail.setQuanty(rs.getInt("quanty"));
		billdetail.setTotal(rs.getDouble("total"));
		billdetail.setProductName(rs.getString("productName"));
		return billdetail;
	}

}
