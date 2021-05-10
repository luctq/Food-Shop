package food.Dao.User;

import java.util.List;

import org.springframework.stereotype.Repository;

import food.Entity.User.BillDetail;
import food.Entity.User.Bills;
import food.Entity.User.MapperBillDetail;
import food.Entity.User.MapperBills;

@Repository
public class BillsDao extends BaseDao {
	public int AddBills(Bills bill) {
		StringBuffer sql = new StringBuffer();
		sql.append("insert into bills ");
		sql.append("( ");
		sql.append("`user`, `phone`, `display_name`, `address`, `total`, `quanty`, `note`, `status`, `orderDay`, `payment`");
		sql.append(") ");
		sql.append("values ");
		sql.append("( ");
		sql.append("    '"+bill.getUser()+"', ");
		sql.append("    '"+bill.getPhone()+"', ");
		sql.append("    '"+bill.getDisplay_name()+"', ");
		sql.append("    '"+bill.getAddress()+"', ");
		sql.append("    '"+bill.getTotal()+"', ");
		sql.append("    '"+bill.getQuanty()+"', ");
		sql.append("    '"+bill.getNote()+"', ");
		sql.append("'0', ");
		sql.append("    '"+bill.getOrderDay()+"', ");
		sql.append("'0'");
		sql.append(");");
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	};
	public List<Bills> GetDataBills() {
		String sql = "select * from bills";
		List<Bills> bills = _jdbcTemplate.query(sql, new MapperBills());
		return bills;
	}
	public Bills GetDataBillByID(int id) {
		String sql = "select * from bills where id = '" + id + "';";
		Bills bill = _jdbcTemplate.queryForObject(sql, new MapperBills());
		return bill;
	}
	public List<BillDetail> GetDataBillDetails() {
		String sql = "select b.id, id_bills, id_product, quanty, total, p.name as productName from billdetail as b inner join products as p on b.id_product = p.id;";
		List<BillDetail> billdetails = _jdbcTemplate.query(sql, new MapperBillDetail());
		return billdetails;
	}
	public long GetIDLastBills() {
		StringBuffer sql = new StringBuffer();
		sql.append("select max(id) from bills;");
		long id = _jdbcTemplate.queryForObject(sql.toString(), new Object[] {}, Long.class);
		return id;
	};
	
	public int AddBillsDetail(BillDetail billDetail) {
		StringBuffer sql = new StringBuffer();
		sql.append("insert into billdetail ");
		sql.append("( ");
		sql.append("    id_product, ");
		sql.append("    id_bills, ");
		sql.append("    quanty, ");
		sql.append("    total ");
		sql.append(") ");
		sql.append("VALUES ");
		sql.append("( ");
		sql.append("    '"+ billDetail.getId_product()+"', ");
		sql.append("    '"+ billDetail.getId_bills()+"', ");
		sql.append("    '"+ billDetail.getQuanty()+"', ");
		sql.append("    '"+ billDetail.getTotal()+"'");
		sql.append(");");
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	};
	
	public void updateBillByID(Bills bill) {
		StringBuffer  sql = new StringBuffer();
		sql.append("update bills ");
		sql.append("set id = '"+ bill.getId() +"' ");
		sql.append(", user = '" +  bill.getUser()+"' ");
		sql.append(", phone = '"+ bill.getPhone() +"' ");
		sql.append(", display_name = '"+ bill.getDisplay_name() +"' ");
		sql.append(", address = '"+ bill.getAddress()+"' ");
		sql.append(", total = '"+ bill.getTotal()+"' ");
		sql.append(", note = '"+ bill.getNote() +"' ");
		sql.append(", status = '"+ bill.getStatus() +"' ");
		sql.append(", payment = '"+bill.getPayment()+"' ");
		sql.append("where id = '"+bill.getId()+"';");
		_jdbcTemplate.execute(sql.toString());
	}
	public void DeleteBill(int id) {
		String sql = "delete from bills where id = '" + id + "';";
		_jdbcTemplate.execute(sql);
	}
	public void DeleteBillDetail(int id) {
		String sql = "delete from billdetail where id_bills = '" + id + "';";
		_jdbcTemplate.execute(sql);
	}
}

