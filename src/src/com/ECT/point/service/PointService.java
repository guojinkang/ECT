package com.ECT.point.service;


import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ECT.entity.User;

import com.ECT.user.dao.UsersDaoImpl;


@Service
@Transactional(readOnly=false)
public class PointService {
	@Resource
	private UsersDaoImpl userdao;
	
	public void updateuser(User user)
	{
		userdao.updateUser(user);
	}
	
}
