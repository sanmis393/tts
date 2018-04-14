package com.enu.service;

import org.springframework.security.access.annotation.Secured;

import com.enu.entity.User;

public interface LoginService {

	@Secured ({"ROLE_ADMIN"})
	public User getDataByUserName(String userName);
}
