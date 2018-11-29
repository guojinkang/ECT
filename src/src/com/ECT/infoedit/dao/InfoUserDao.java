package com.ECT.infoedit.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ECT.entity.User;

@Repository
public class InfoUserDao {
	@Autowired
	 private SessionFactory sessionFactory;
	 	
	 private Session getSession(){
		 return sessionFactory.getCurrentSession();
	 }
	 public User findone(String id) {
		 Session session = sessionFactory.getCurrentSession();
		 User user = session.get(User.class, id);
		 return user;
	 }
}
