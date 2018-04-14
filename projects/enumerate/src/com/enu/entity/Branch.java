package com.enu.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "BRANCH")
public class Branch  implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -2380874036530716122L;
	
	@Id
	@Column(name = "branch_id")
	private String branchId;
	@Column(name = "branch_name")
	private String branchName;
	@Column(name = "branch_code")
	private String branchCode;
	
	@ManyToOne
	private User user;
	
	@OneToOne
	private Address address;

	public String getBranchId() {
		return branchId;
	}

	public void setBranchId(String branchId) {
		this.branchId = branchId;
	}

	public String getBranchName() {
		return branchName;
	}

	public void setBranchName(String branchName) {
		this.branchName = branchName;
	}

	public String getBranchCode() {
		return branchCode;
	}

	public void setBranchCode(String branchCode) {
		this.branchCode = branchCode;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}
	
	
}
