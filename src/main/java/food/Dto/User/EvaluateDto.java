package food.Dto.User;

public class EvaluateDto {
	private int id_evaluate;
	private long id_product;
	private long id_user;
	private int num_star;
	private String content;
	private long id;
	private String user;
	private String password;
	private String display_name;
	private String address;
	private String phone;
	private String avatar;
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getDisplay_name() {
		return display_name;
	}
	public void setDisplay_name(String display_name) {
		this.display_name = display_name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getId_evaluate() {
		return id_evaluate;
	}
	public void setId_evaluate(int id_evaluate) {
		this.id_evaluate = id_evaluate;
	}
	public EvaluateDto() {
		super();
	}
	public long getId_product() {
		return id_product;
	}
	public void setId_product(long id_product) {
		this.id_product = id_product;
	}
	public long getId_user() {
		return id_user;
	}
	public void setId_user(long id_user) {
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
	public String getAvatar() {
		return avatar;
	}
	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}
	
}
