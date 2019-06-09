package po;

import java.math.BigDecimal;
import java.util.Date;

public class Order {
	private Integer productsaleId;
	private String productorderId;
	private Integer userId;
	private Date productorderTime;
	private String productReceiver;
	private String productorderAddress;
	private String productorderTel;
	private BigDecimal productTotal;
	private String productorderStatus;
	private String productId;
	
	public String getProductId() {
		return productId;
	}
	public void setProductId(String productId) {
		this.productId = productId;
	}
	public Integer getProductsaleId() {
		return productsaleId;
	}
	public void setProductsaleId(Integer productsaleId) {
		this.productsaleId = productsaleId;
	}
	public String getProductorderId() {
		return productorderId;
	}
	public void setProductorderId(String productorderId) {
		this.productorderId = productorderId;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public Date getProductorderTime() {
		return productorderTime;
	}
	public void setProductorderTime(Date productorderTime) {
		this.productorderTime = productorderTime;
	}
	public String getProductReceiver() {
		return productReceiver;
	}
	public void setProductReceiver(String productReceiver) {
		this.productReceiver = productReceiver;
	}
	public String getProductorderAddress() {
		return productorderAddress;
	}
	public void setProductorderAddress(String productorderAddress) {
		this.productorderAddress = productorderAddress;
	}
	public String getProductorderTel() {
		return productorderTel;
	}
	public void setProductorderTel(String productorderTel) {
		this.productorderTel = productorderTel;
	}
	public BigDecimal getProductTotal() {
		return productTotal;
	}
	public void setProductTotal(BigDecimal productTotal) {
		this.productTotal = productTotal;
	}
	public String getProductorderStatus() {
		return productorderStatus;
	}
	public void setProductorderStatus(String productorderStatus) {
		this.productorderStatus = productorderStatus;
	}
}
