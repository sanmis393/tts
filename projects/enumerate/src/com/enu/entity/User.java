package com.enu.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "USERS")
public class User implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = -4955379970994398015L;
	@Id
	@Column(name = "username")
	private String userName;
	@Column(name = "password")
	private String password;
	@Column(name = "role")
	private String userRole;
	@Column(name = "full_name")
	private String fullName;
	@Column(name = "country")
	private String country;
	@Column(name = "enabled")
	private short enabled;

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	

	public String getUserRole() {
		return userRole;
	}

	public void setUserRole(String userRole) {
		this.userRole = userRole;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public short getEnabled() {
		return enabled;
	}

	public void setEnabled(short enabled) {
		this.enabled = enabled;
	}
}