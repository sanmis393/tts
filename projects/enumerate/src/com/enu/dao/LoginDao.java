package com.enu.dao;

import com.enu.entity.User;

public interface LoginDao {

	public User getActiveUser(String userName);

}
