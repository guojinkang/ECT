package com.ECT.register.controller;

import java.io.File;
import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.ECT.entity.User;
import com.ECT.register.service.RegisterServiceImpl;

@Controller
public class RegistController {

	@Resource
	private RegisterServiceImpl usersServiceImpl;

	@RequestMapping(value = "/regist", method = RequestMethod.POST)
	public String regist(@RequestParam("file") MultipartFile file, User user,
			HttpSession session) {	
		//文件上传
		String fileName = user.getUserName() + "_head.png";
		String path= "F:\\javaeework\\ECTPrj\\WebContent\\images";
		if (!file.isEmpty()) {
			try {
				
				FileCopyUtils.copy(file.getBytes(), new File(path+ "\\" +fileName));
				user.setIcon("images/head/"+ fileName);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		this.usersServiceImpl.regist(user);
		return "login";
	}
}