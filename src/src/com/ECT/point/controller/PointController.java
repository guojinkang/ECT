package com.ECT.point.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ECT.entity.User;
import com.ECT.point.service.PointService;

@Controller
public class PointController {
	@Resource
	private PointService pointService;
	@RequestMapping("/topay")
	public String topay(HttpSession session)
	{
		if(session.getAttribute("username")==null)
		{
			return "login";
		}
		else
		{
			return "pay";
		}
		
	}
	@RequestMapping("/user")
	public String findUser(HttpServletRequest request,HttpSession session) {
		String point = request.getParameter("docVlGender");
		int b;
		if(point.equals("on")) {
			String points = request.getParameter("point");
			int i=0;
			if((i=points.indexOf("."))!=-1)
			{
				String p=points.substring(0,i);
				System.out.println(p);
				b = Integer.parseInt(p);
			}
			else
				b = Integer.parseInt(points);
		}
		else {
			b = Integer.parseInt(point);
		}
		User user = (User) session.getAttribute("username");
		int a = user.getPoint();
		b = b*10;
		a = a + b;
		user.setPoint(a);
		pointService.updateuser(user);
		return "pay";
	}

}
