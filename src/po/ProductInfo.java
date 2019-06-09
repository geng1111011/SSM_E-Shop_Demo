package po;

import java.math.BigDecimal;
import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class ProductInfo {
	 	private Integer productId;

		private String productName;

	    private Integer typeId;

	    private BigDecimal productPrice;

	    private Integer productQuantity;
	    private MultipartFile logoImage;

	

		private String productArea;

	    private BigDecimal productHotprice;

	    private String productInfo;

	    private Date productTime;

	    private String productPicture;
	    
	    private String typeName;//查询时使用
	    
	    public MultipartFile getLogoImage() {
				return logoImage;
			}

			public void setLogoImage(MultipartFile logoImage) {
				this.logoImage = logoImage;
			}
	    
	    public String getTypeName() {
			return typeName;
		}

		public void setTypeName(String typeName) {
			this.typeName = typeName;
		}

		public Integer getProductId() {
				return productId;
			}

			public void setProductId(Integer productId) {
				this.productId = productId;
			}

			public String getProductName() {
				return productName;
			}

			public void setProductName(String productName) {
				this.productName = productName;
			}

			public Integer getTypeId() {
				return typeId;
			}

			public void setTypeId(Integer typeId) {
				this.typeId = typeId;
			}

			public BigDecimal getProductPrice() {
				return productPrice;
			}

			public void setProductPrice(BigDecimal productPrice) {
				this.productPrice = productPrice;
			}

			public Integer getProductQuantity() {
				return productQuantity;
			}

			public void setProductQuantity(Integer productQuantity) {
				this.productQuantity = productQuantity;
			}

			public String getProductArea() {
				return productArea;
			}

			public void setProductArea(String productArea) {
				this.productArea = productArea;
			}

			public BigDecimal getProductHotprice() {
				return productHotprice;
			}

			public void setProductHotprice(BigDecimal productHotprice) {
				this.productHotprice = productHotprice;
			}

			public String getProductInfo() {
				return productInfo;
			}

			public void setProductInfo(String productInfo) {
				this.productInfo = productInfo;
			}

			public Date getProductTime() {
				return productTime;
			}

			public void setProductTime(Date productTime) {
				this.productTime = productTime;
			}

			public String getProductPicture() {
				return productPicture;
			}

			public void setProductPicture(String productPicture) {
				this.productPicture = productPicture;
			}
}
