package com.ECT.user.dao;

import org.springframework.stereotype.Repository;

import com.ECT.entity.User;
import com.ECT.util.BaseDao;

@Repository
public class UsersDaoImpl extends BaseDao<User>{
	
	
	
	//注册时将注册信息存入数据库
	public void saveUsers(User user) throws Exception{
		this.save(user);
	}
	
	//根据用户名获取用户信息
	public User getone(String id)
	{

		User u=(User) this.getById(User.class, id);
		return u;
	}
	
}