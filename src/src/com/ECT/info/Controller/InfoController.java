package com.ECT.info.Controller;

import javax.servlet.http.HttpSession;

import org.apache.catalina.servlet4preview.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ECT.entity.User;

@Controller
public class InfoController {
	@RequestMapping("/info")
	public String findbyid(HttpServletRequest request,HttpSession session) {
		User user = (User) session.getAttribute("username");
		if(session.getAttribute("username") != null) {
		session.setAttribute("user", user);
		return "info";
		}else {
		return "login";
		}
		
	}
}
