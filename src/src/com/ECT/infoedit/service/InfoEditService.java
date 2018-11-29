package com.ECT.infoedit.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ECT.entity.User;
import com.ECT.infoedit.dao.InfoEditDao;

@Service
@Transactional(readOnly=false)
public class InfoEditService {
	@Autowired
	private InfoEditDao infoEditDao;
	
//	public void updateUser(User user,String introduction,String major,String email,String icon) {
//		infoEditDao.updateUser(user,introduction, major,email,icon);
//	}
	public void updateUser(User user)
	{
		infoEditDao.updateUser(user);
	}
	
	public void updatePw(User user,String passWord) {
		infoEditDao.updatePw(user,passWord);
	}
	
}
