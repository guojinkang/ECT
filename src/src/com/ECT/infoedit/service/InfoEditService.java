package com.ECT.infoedit.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ECT.entity.User;
import com.ECT.infoedit.dao.InfoEditDao;

@Service
public class InfoEditService {
	@Autowired
	private InfoEditDao infoEditDao;
	@Transactional(readOnly=false)
	public void updateUser(User user,String passWord,String name,String introduction,String stid,String email) {
		infoEditDao.updateUser(user,passWord, name, introduction, stid,email);
	}
}
