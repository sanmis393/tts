package com.enu.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.enu.dao.LoginDao;
import com.enu.service.LoginService;

@Service("loginService")
public class LoginServiceImpl implements LoginService {
	
	@Resource(name ="loginDao")
	private LoginDao loginDao;
	
	@Override
	public com.enu.entity.User getDataByUserName(String userName) {
		return loginDao.getActiveUser(userName);
	}
}