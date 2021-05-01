package food.Dto.Admin;

import java.sql.Date;

public class AdminProductsDto {
	private long id_products;
	private int id_category;
	private String name;
	private double price;
	private int sale;
	private String title;
	private int highlight;
	private int new_product;
	private String details;
	private String img;
	private Date created_at;
	private Date updated_at;
	private int status;
	public int isStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public long getId_products() {
		return id_products;
	}
	public void setId_products(long id_products) {
		this.id_products = id_products;
	}
	public int getId_category() {
		return id_category;
	}
	public void setId_category(int id_category) {
		this.id_category = id_category;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getSale() {
		return sale;
	}
	public void setSale(int sale) {
		this.sale = sale;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int isHighlight() {
		return highlight;
	}
	public void setHighlight(int highlight) {
		this.highlight = highlight;
	}
	public int isNew_product() {
		return new_product;
	}
	public void setNew_product(int new_product) {
		this.new_product = new_product;
	}
	public String getDetails() {
		return details;
	}
	public void setDetails(String details) {
		this.details = details;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public Date getCreated_at() {
		return created_at;
	}
	public void setCreated_at(Date created_at) {
		this.created_at = created_at;
	}
	public Date getUpdated_at() {
		return updated_at;
	}
	public void setUpdated_at(Date updated_at) {
		this.updated_at = updated_at;
	}
	public AdminProductsDto() {
		super();
	}
}
