package com.enu.service.impl;

import java.util.Arrays;

import javax.annotation.Resource;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.enu.dao.LoginDao;

@Service("enumerateAuthenticationService")
public class EnumerateAuthenticationService implements UserDetailsService {
	
	@Resource(name = "loginDao")
	private LoginDao loginDao;
	
	@Override
	public UserDetails loadUserByUsername(String userName)
			        throws UsernameNotFoundException {
		com.enu.entity.User activeUserInfo = loginDao.getActiveUser(userName);
		GrantedAuthority authority = new SimpleGrantedAuthority(activeUserInfo.getUserRole());
		UserDetails userDetails = (UserDetails)new User(activeUserInfo.getUserName(),
				activeUserInfo.getPassword(), Arrays.asList(authority));
		return userDetails;
	}
}