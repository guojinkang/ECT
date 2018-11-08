package com.ECT.infoedit.dao;

import javax.persistence.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.ECT.entity.User;

@Repository
public class InfoEditDao {
	@Autowired
	 private SessionFactory sessionFactory;
	 	
	 private Session getSession(){
		 return sessionFactory.getCurrentSession();
	 }
	public void updateUser(User user,String passWord,String name,String introduction,String stid,String email) {
		String username = user.getUserName();
		String hql = "update User set passWord = '"+passWord+"',name='"+name+"',introduction='"+introduction+"',stid='"+stid+"',email='"+email+"' where userName = '"+username+"'";
		Query query = this.getSession().createQuery(hql);
		query.executeUpdate();
	}
}
