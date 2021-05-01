package food.Dto.User;

public class EvaluateDto {
	private int id_evaluate;
	public int getId_evaluate() {
		return id_evaluate;
	}
	public void setId_evaluate(int id_evaluate) {
		this.id_evaluate = id_evaluate;
	}
	private long id_product;
	private int id_user;
	private int num_star;
	private String content;
	public EvaluateDto() {
		super();
	}
	public long getId_product() {
		return id_product;
	}
	public void setId_product(long id_product) {
		this.id_product = id_product;
	}
	public int getId_user() {
		return id_user;
	}
	public void setId_user(int id_user) {
		this.id_user = id_user;
	}
	public int getNum_star() {
		return num_star;
	}
	public void setNum_star(int num_star) {
		this.num_star = num_star;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
}
