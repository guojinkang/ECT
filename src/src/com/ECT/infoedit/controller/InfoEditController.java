package com.ECT.infoedit.controller;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.ECT.entity.User;
import com.ECT.infoedit.dao.InfoUserDao;
import com.ECT.infoedit.service.InfoEditService;

@Controller
public class InfoEditController {
	@Autowired
	private InfoEditService infoEditService;
	@Autowired
	private InfoUserDao iu;
	@RequestMapping("/update")
	public String updateUser(HttpSession session,@RequestParam(value="psd")String passWord,@RequestParam(value="user1")String name,@RequestParam(value="introduction")String introduction,@RequestParam(value="user2")String stid,@RequestParam(value="user5")String email) {
		User user = (User)session.getAttribute("user");
		String name1 = user.getUserName();
		infoEditService.updateUser(user,passWord,name,introduction,stid,email);
		User user1 = iu.findone(name1);
		System.out.println(user1.getName());
		session.setAttribute("user", user1);
		return "info";
	}
	
}
