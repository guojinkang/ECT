package com.ECT.user.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ECT.entity.User;

@Controller
public class UserController {
	@RequestMapping(value="showuser")
	public String showuser(HttpSession session,HttpServletRequest request)
	{
		User user1=(User) session.getAttribute("user");
		User user2=(User) session.getAttribute("username");
		if(user2==null)
		{
			return "login";
		}
		if(user1.getUserName().equals(user2.getUserName()))
		{
			return "Personal_information";
		}
		else
		{
			return "user";
			
		}
	}
}
