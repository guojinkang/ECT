package com.ECT.infoedit.dao;

import javax.persistence.Query;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.ECT.entity.User;
import com.ECT.util.BaseDao;

@Repository
public class InfoEditDao extends BaseDao<User>{
	
	 //用户个人信息修改
	 public void updateUser(User user) {
		 Session session = this.getSession();
		
		 session.update(user);
		 
		}
	//用户密码修改
	public void updatePw(User user,String passWord) {
		String username = user.getUserName();
		user.setPassWord(passWord);
		Session session  = this.getSession();
		session.update(user);
	}
}
