package po;



public class Shoppingcar {
	
	    private Integer carid;


	    private Integer productid;


	    private Integer productnumber;


	    private Integer userid;

	    private Integer carstatus;

	    /**
	     * @return carId
	     */
	    public Integer getCarid() {
	        return carid;
	    }

	    /**
	     * @param carid
	     */
	    public void setCarid(Integer carid) {
	        this.carid = carid;
	    }

	    /**
	     * @return productId
	     */
	    public Integer getProductid() {
	        return productid;
	    }

	    /**
	     * @param productid
	     */
	    public void setProductid(Integer productid) {
	        this.productid = productid;
	    }

	    /**
	     * @return productNumber
	     */
	    public Integer getProductnumber() {
	        return productnumber;
	    }

	    /**
	     * @param productnumber
	     */
	    public void setProductnumber(Integer productnumber) {
	        this.productnumber = productnumber;
	    }

	    /**
	     * @return userId
	     */
	    public Integer getUserid() {
	        return userid;
	    }

	    /**
	     * @param userid
	     */
	    public void setUserid(Integer userid) {
	        this.userid = userid;
	    }

	    /**
	     * @return carStatus
	     */
	    public Integer getCarstatus() {
	        return carstatus;
	    }

	    /**
	     * @param carstatus
	     */
	    public void setCarstatus(Integer carstatus) {
	        this.carstatus = carstatus;
	    }

	    @Override
	    public String toString() {
	        return "Shoppingcar{" +
	                "carid=" + carid +
	                ", productid=" + productid +
	                ", productnumber=" + productnumber +
	                ", userid=" + userid +
	                ", carstatus=" + carstatus +
	                '}';
}}
