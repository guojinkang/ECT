package com.ECT.infoedit.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.ECT.entity.User;
import com.ECT.infoedit.dao.InfoUserDao;
import com.ECT.infoedit.service.InfoEditService;

@Controller
public class InfoEditController {
	@Autowired
	private InfoEditService infoEditService;
	@Autowired
	private InfoUserDao iu;
	//修改用户个人信息
	@RequestMapping(value="/changeif", method=RequestMethod.POST)
	public String updateUser(@RequestParam("file") MultipartFile file, HttpSession session,User user) {
		
		
		User user1=(User) session.getAttribute("username");
		String fileName = user1.getUserName() + "_head.png";
		String path= "F:\\javaeework\\ECTPrj\\WebContent\\images\\head";
		
		if (!file.isEmpty()) {
			try {
				
				FileCopyUtils.copy(file.getBytes(), new File(path+ "\\" +fileName));
				user.setIcon("images/head/"+ fileName);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		user.setUserName(user1.getUserName());
		user.setName(user1.getName());
		user.setPassWord(user1.getPassWord());
		user.setPoint(user1.getPoint());
		
		infoEditService.updateUser(user);
		
		session.setAttribute("username", user);
		return "Personal_information";
	}
	//修改用户密码
	@RequestMapping(value="/changepw", method=RequestMethod.POST)
	public  String updatePw(HttpSession session,HttpServletRequest request,@RequestParam(value="newpw")String passWord) {
		User user = (User)session.getAttribute("username");
		
		if(user.getPassWord().equals(request.getParameter("oldpw"))) {
			String name1 = user.getUserName();
			infoEditService.updatePw(user,passWord);
			User user1 = iu.findone(name1);
			System.out.println(user1.getName());
			session.setAttribute("username", user1);
			session.setAttribute("bool", 1);
			return "login";
		}
		else {
			session.setAttribute("bool", 0);
			return "Personal_password_change";
		}
		
		
	}
	
}
