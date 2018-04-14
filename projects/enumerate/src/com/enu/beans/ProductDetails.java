package com.enu.beans;

import java.io.Serializable;

public class ProductDetails implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 7201216719216025623L;
	
	private String productId;
	private String productName;
	private String sku;
	private String barcode;
	
	private BranchDetails branchDetails;
	

}
