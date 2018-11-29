package com.ECT.register.controller;

import java.io.File;
import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.ECT.entity.User;
import com.ECT.register.service.RegisterServiceImpl;
import com.ECT.user.dao.UsersDaoImpl;

@Controller
public class RegistController {

	@Resource
	private RegisterServiceImpl usersServiceImpl;
	@Resource
	private UsersDaoImpl userdao;

	@RequestMapping(value = "/regist", method = RequestMethod.POST)
	public String regist(User user, HttpSession session) {
		this.usersServiceImpl.regist(user);
		return "login";
	}

	@RequestMapping(value = "/checkname")
	public void checkname(HttpServletRequest request, HttpServletResponse response) {
		try {
			String name = request.getParameter("name");
			
			if (userdao.getById(User.class, name) != null) {

				response.getWriter().append("fail");
			} else {
				response.getWriter().append("1");
			}
			if(name.length()<2)
			{
				response.getWriter().append("2");
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}