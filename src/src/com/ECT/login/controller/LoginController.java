package com.ECT.login.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ECT.login.service.LoginServiceImpl;

@Controller
public class LoginController {
	@Resource
	private LoginServiceImpl usersServiceImpl;
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String toLogin() {
		return "login";
	}
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String Login(HttpServletRequest request,HttpSession session) {
		String id=request.getParameter("name");
		String pass=request.getParameter("password");
		boolean b=this.usersServiceImpl.check(id,pass);
		
		if(b) {
			
			session.setAttribute("username", this.usersServiceImpl.findOne(id));
			return "index";
		}else {
			return "login";
		}

	}
	
	@RequestMapping(value="/loginout")
	public String outLogin(HttpServletRequest request,HttpSession session) {
		session.invalidate();
		return "index";
	}

}
