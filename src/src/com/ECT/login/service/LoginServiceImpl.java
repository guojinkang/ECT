package com.ECT.login.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ECT.entity.User;
import com.ECT.user.dao.UsersDaoImpl;

@Service
@Transactional(readOnly=false)
public class LoginServiceImpl {
	
	@Resource
	private UsersDaoImpl usersDaoImpl;
	
	//验证登录
	public boolean  check(String id,String password){
		try {
			User loginuser =this.usersDaoImpl.getone(id);
			if(loginuser.getPassWord().equals(password)) {
				return true;	
			}
			else {
				return false;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
	//获取用户
	public User findOne(String id){
		return this.usersDaoImpl.getone(id);
	}

	
}

