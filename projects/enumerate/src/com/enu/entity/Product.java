package com.enu.entity;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.OneToMany;

public class Product {

	
	/**
	 * 
	 */
	private static final long serialVersionUID = -3702936463578531236L;
	@Id
	@Column(name = "product_id")
	private String productId;
	@Column(name = "product_name")
	private String productName;
	@Column(name = "product_sku")
	private String sku;
	@Column(name = "barcode")
	private String barcode;
	
	@OneToMany
	private Branch branch;

	public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getSku() {
		return sku;
	}

	public void setSku(String sku) {
		this.sku = sku;
	}

	public String getBarcode() {
		return barcode;
	}

	public void setBarcode(String barcode) {
		this.barcode = barcode;
	}

	public Branch getBranch() {
		return branch;
	}

	public void setBranch(Branch branch) {
		this.branch = branch;
	}
	
}
