package com.enu.dao.impl;

import javax.transaction.Transactional;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.enu.dao.LoginDao;
import com.enu.entity.User;



@Repository("loginDao")
public class LoginDaoImpl implements LoginDao {
	
	@Autowired
    private SessionFactory sessionFactory;
	
	@Transactional
	@Override
	public User getActiveUser(String userName) {
		Session session = sessionFactory.getCurrentSession();
			User activeUserInfo = new User();
			short enabled = 1;
			Criteria criteria = session.createCriteria(User.class);
			criteria.add(Restrictions.eq("userName", userName));
			criteria.add(Restrictions.eq("enabled", enabled));
			
			if(!criteria.list().isEmpty()) {
				activeUserInfo = (User)criteria.list().get(0);
			}
			return activeUserInfo;
		}

}
