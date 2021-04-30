package food.Entity.Admin;

public class AdminCategorys {
	private int id;
	private String name;
	private String descripttion;
	private int parent_id;
	public int getParent_id() {
		return parent_id;
	}
	public void setParent_id(int parent_id) {
		this.parent_id = parent_id;
	}
	public AdminCategorys() {
		super();
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescripttion() {
		return descripttion;
	}
	public void setDescripttion(String descripttion) {
		this.descripttion = descripttion;
	}
	
}
