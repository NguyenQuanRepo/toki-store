package ptithcm.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "CartItems")
public class CartItem {
	@Id
	private String id;
	private int quantity;
	private Float unitPrice;
	
	@ManyToOne
	@JoinColumn(name = "pro_id")
	private Product product;
	
	@ManyToOne
	@JoinColumn(name = "cat_id")
	private Cart cart;

	
	
	public CartItem() {
		super();
	}

	
	public CartItem(String id, int quantity, Float unitPrice, Product product, Cart cart) {
		super();
		this.id = id;
		this.quantity = quantity;
		this.unitPrice = unitPrice;
		this.product = product;
		this.cart = cart;
	}


	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public Float getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(Float float1) {
		this.unitPrice = float1;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public Cart getCart() {
		return cart;
	}

	public void setCart(Cart cart) {
		this.cart = cart;
	}
	
	
}
