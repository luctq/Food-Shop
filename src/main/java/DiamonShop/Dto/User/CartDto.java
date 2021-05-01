package DiamonShop.Dto.User;

public class CartDto {
	private int quanty;
	private double totalPrice;
	private ProductsDto product;
	public CartDto() {
		super();
	}
	public CartDto(int quanty, double totalPrice, ProductsDto products) {
		super();
		this.quanty = quanty;
		this.totalPrice = totalPrice;
		this.product = product;
	}
	public int getQuanty() {
		return quanty;
	}
	public void setQuanty(int quanty) {
		this.quanty = quanty;
	}
	public double getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}
	public ProductsDto getProduct() {
		return product;
	}
	public void setProducts(ProductsDto product) {
		this.product = product;
	}
}
