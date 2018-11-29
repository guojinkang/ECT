package com.ECT.register.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ECT.entity.User;
import com.ECT.user.dao.UsersDaoImpl;

@Service
@Transactional(readOnly=false)
public class RegisterServiceImpl {
	
	@Resource
	private UsersDaoImpl usersDaoImpl;
	
	public boolean regist(User user) {
		try {
			this.usersDaoImpl.saveUsers(user);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

}
